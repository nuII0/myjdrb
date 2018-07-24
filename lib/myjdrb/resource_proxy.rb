require 'myjdrb/endpoints'

module Myjdrb
  class ResourceProxy
    REQUIRED = :required

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

      define_method(name) do |**kwargs|
        schema = parameter_schema.inject({}) do |h,(k,v)|
          h[k] = v[:type]
          h
        end

        default_parameter = parameter_schema.inject({}) do |h,(k,v)|
          if v.has_key? :default
            h[k] = v[:default]
          end
          h
        end

        superfluit_params = kwargs.keys - parameter_schema.keys
        unless superfluit_params.empty?
          raise ArgumentError "Unrecognized parameter(s) passed: #{superfluit_params.join(",")}"
        end

        merged_params = default_parameter.merge(kwargs)

        ClassyHash.validate(merged_params, schema, full: true, strict: true, verbose: true)

        uri = build_uri name
        payload = merged_params.values

        require 'pry'; binding.pry
        execute_generic_post(uri, payload)
      end
    end
  end
end
