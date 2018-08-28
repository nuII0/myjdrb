require 'myjdrb/endpoints'
require 'myjdrb/struct/generated'
require 'myjdrb/enum/generated'
require 'myjdrb/refinement/string_camel_snake_case'
require 'myjdrb/resource/definition'

module Myjdrb
  module Resource
    class Base
      #extend Myjdrb::Mixin::TypedMethod

      using StringCamelSnakeCase

      include Myjdrb::Struct
      include Myjdrb::Enum

      def initialize(device_id, sessiontoken, executer, endpoint_name)
        @sessiontoken = sessiontoken
        @device_id = device_id
        @executer = executer
        @endpoint_name = endpoint_name
        @resources = []
      end

      def method_missing(message, *args, **kwargs, &block)
        super unless resource_defined? message

        resource = find_matching_resource(message, kwargs)

        ordered_parameter = order_parameter(resource.parameter_schema.keys, kwargs)

        uri = build_uri message.to_s

        payload = ordered_parameter.values.map(&:to_json)
        execute_generic_post(uri, payload)
      end

      def respond_to?(message, include_private = false)
        resource_defined? message
      end

      def execute_generic_post(uri, payload)
        endpoint = Endpoints::PostEndpoint(uri, Schema::Response::GENERIC).new(
          sessiontoken: @sessiontoken,
          device_id: @device_id)

        request = Requests::Post.new
        request.parameter = payload
        @executer.execute_request(endpoint, request).data
      end

      def build_uri path
        "/#{@endpoint_name}/#{path}"
      end

      def define_resource(name:, parameter_schema:{}, return_type: nil, http_type:)
        resource = Definition.new(names: [name.to_sym, name.to_s.snakecase.to_sym].uniq,
                                          parameter_schema: parameter_schema,
                                          http_type: http_type.to_sym,
                                          return_type: return_type)
        check_ambigious(resource)
        @resources << resource
      end

      private

      def resource_by_name(name)
        @resources.select { |e| e.names.any?(name) }
      end

      def resource_defined?(name)
        resource_by_name(name).any?
      end

      def order_parameter(key_array, hash)
        key_array.zip(hash.values_at(*key_array)).to_h
      end

      def find_matching_resource(name, parameter)
        candidates = resource_by_name name

        matches = candidates.select do |c|
          ClassyHash.validate(parameter, c.classy_hash_schema, full: true, strict: true, verbose: true, raise_errors: false)
        end

        if matches.empty?
          raise ArgumentError.new("Given parameters are invalid. Given parameters: #{parameter}, Required (one of the following): #{candidates.collect(&:parameter_schema)}")
        elsif matches.length > 1
          raise "Multiple matches found as candidates."
        end

        matches.first
      end

      def check_ambigious(resource_definition)
        @resources.each do |r|
          if r.ambigious? resource_definition
            raise AmbiguousResourceDefinition.new("Another scheme is already defined with keys from #{r.parameter_schema}")
          end
        end
      end
    end
  end
end
