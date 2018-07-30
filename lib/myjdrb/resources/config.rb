require 'myjdrb/resource_proxy'

module Myjdrb
  class Config < ResourceProxy
    def initialize(device_id:, sessiontoken:, executer:)
      super(device_id: device_id,
            sessiontoken: sessiontoken,
            executer: executer,
            endpoint_name: "config")

      define_resource(name: :list,
                      parameter:
                      {
                        pattern: { type: ->(v){v.is_a? Regexp}, default: %r{.*} },
                        return_description: { type: TrueClass, default: true },
                        return_values: { type: TrueClass, default: true },
                        return_default_values: { type: TrueClass, default: true }
                      })

      define_resource(name: :get,
                      parameter:
                      {
                        interface_name: { type: String },
                        storage: { type: String, default: "null" },
                        key: { type: String }
                      })

      define_resource(name: :set,
                      parameter:
                      {
                        interface_name: { type: String },
                        storage: { type: String, default: "null" },
                        key: { type: String },
                        value: { type: Object }
                      })
    end
  end
end
