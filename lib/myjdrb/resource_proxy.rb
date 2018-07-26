require 'myjdrb/endpoints'

module Myjdrb
  class ResourceProxy
    include Myjdrb::Mixin::TypedMethod

    def initialize(device_id:, sessiontoken:, executer:)
      @sessiontoken = sessiontoken
      @device_id = device_id
      @executer = executer
    end

    def method_missing(message, *args, &block)
      uri = build_uri message
      payload = args

      execute_generic_post(uri, payload)
    end

    def execute_generic_post(uri, payload)
      endpoint = Endpoints::PostEndpoint(uri, Schema::Response::GENERIC).new(
        sessiontoken: @sessiontoken,
        device_id: @device_id)

      request = Requests::Post.new
      request.parameter = payload
      @executer.execute_request(endpoint, request).data
    end

    def respond_to_missing?(*)
      true
    end

    def build_uri path
      resource_name = self.class.name.split('::').last.downcase
      "/#{resource_name}/#{path}"
    end

    def self.define_resource(name:, parameter_schema:{})
      define_typed_method(name: name, parameter: parameter_schema) do |arguments|
        uri = build_uri name
        payload = merged_params.values
        require 'pry'; binding.pry
        execute_generic_post(uri, payload)
      end
    end
  end
end
