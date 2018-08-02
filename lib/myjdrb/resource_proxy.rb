require 'myjdrb/endpoints'
require 'myjdrb/mixin/typed_method'
require 'myjdrb/refinements/string_camel_snake_case'

module Myjdrb
  class ResourceProxy
    extend Myjdrb::Mixin::TypedMethod

    using StringCamelSnakeCase

    def initialize(device_id:, sessiontoken:, executer:, endpoint_name:)
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

    def define_resource(name:, parameter:{},return: nil, &blk)
      if self.class.methods.any? name
        # TODO same endpoint with multiple possible parameters
        require 'pry'; binding.pry
      end

      self.class.define_typed_method(name: name, typed_parameter: parameter) do |arguments|
        uri = build_uri name
        payload = arguments.values.map(&:to_json)
        execute_generic_post(uri, payload)
      end

      # provide snake_case variant
      self.class.alias_method name.to_s.snakecase, name
    end
  end
end
