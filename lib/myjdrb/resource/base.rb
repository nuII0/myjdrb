require 'myjdrb/endpoints'
require 'myjdrb/struct/generated'
require 'myjdrb/enum/generated'
require 'myjdrb/mixin/typed_method'
require 'myjdrb/refinement/string_camel_snake_case'

module Myjdrb
  module Resource
    class Base
      extend Myjdrb::Mixin::TypedMethod

      using StringCamelSnakeCase

      include Myjdrb::Struct
      include Myjdrb::Enum

      def initialize(device_id, sessiontoken, executer, endpoint_name)
        @sessiontoken = sessiontoken
        @device_id = device_id
        @executer = executer
        @endpoint_name = endpoint_name
      end

      #def method_missing(message, *args, &block)
      #uri = build_uri message
      #payload = args

      #execute_generic_post(uri, payload)
      #end

      def execute_generic_post(uri, payload)
        endpoint = Endpoints::PostEndpoint(uri, Schema::Response::GENERIC).new(
          sessiontoken: @sessiontoken,
          device_id: @device_id)

        request = Requests::Post.new
        request.parameter = payload
        @executer.execute_request(endpoint, request).data
      end

      #def respond_to_missing?(*)
      #true
      #end

      def build_uri path
        "/#{@endpoint_name}/#{path}"
      end

      def define_resource(name:, parameter:{}, return_type: nil, &blk)
        method_name = name

        if self.class.public_instance_methods.any? name
          method_name = "#{name}1"
          return if self.class.public_instance_methods.any? method_name
        end

        self.class.define_typed_method(name: method_name, typed_parameter: parameter) do |arguments|
          uri = build_uri name
          payload = arguments.values.map(&:to_json)
          execute_generic_post(uri, payload)
        end

        # provide snake_case variant
        self.class.alias_method name.to_s.snakecase, name
      end
    end
  end
end
