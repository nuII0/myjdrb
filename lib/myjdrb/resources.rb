require 'myjdrb/resource_proxy'

module Myjdrb
  #class Config < ResourceProxy
    #define_resource(name: :list,
                    #parameter:
                    #{
                      #pattern: { type: ->(v){v.is_a? Regexp}, default: %r{.*} },
                      #return_description: { type: TrueClass, default: true },
                      #return_values: { type: TrueClass, default: true },
                      #return_default_values: { type: TrueClass, default: true }
                    #})

    #define_resource(name: :get,
                    #parameter:
                    #{
                      #interface_name: { type: String },
                      #storage: { type: String, default: "null" },
                      #key: { type: String }
                    #})
  #end
  class LinkGrabberV2 < ResourceProxy; end
  class Jd < ResourceProxy; end
end
