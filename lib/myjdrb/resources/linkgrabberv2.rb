require 'myjdrb/resource_proxy'

module Myjdrb
  class LinkGrabberV2 < ResourceProxy
    def initialize(device_id:, sessiontoken:, executer:)
      super(device_id: device_id,
            sessiontoken: sessiontoken,
            executer: executer,
            endpoint_name: "linkgrabberv2")

      define_resource(name: :clearList)

      #define_resource(name: :move_to_downloadlist,
                      #parameter:
                      #{
                        #: { type: [Integer] },
                        #packageIds: { type: [Integer] },
                        #key: { type: String }
                      #})

      define_resource(name: :addLinks,
                      parameter:
                      {
                        query: { type: Myjdrb::Structs::AddLinksQueryStorable }
                      })
      #parameter:
      #{
      #addLinksQueryStorable: { type: Myjdrb::Structs::AddLinksQueryStorable }
      #})

      #define_resource(name: :set,
      #parameter:
      #{
      #interface_name: { type: String },
      #storage: { type: String, default: "null" },
      #key: { type: String },
      #value: { type: Object }
      #})
    end
  end
end
