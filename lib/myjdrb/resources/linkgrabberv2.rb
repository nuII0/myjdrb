require 'myjdrb/resource_proxy'

module Myjdrb
  class LinkGrabberV2 < ResourceProxy
    def initialize(device_id:, sessiontoken:, executer:)
      super(device_id: device_id,
            sessiontoken: sessiontoken,
            executer: executer,
            endpoint_name: "linkgrabberv2")

      define_resource(name: :clearList)

      define_resource(name: :help)

      define_resource(name: :moveToDownloadList,
                      parameter:
                      {
                        linkIds: { type: [Integer] },
                        packageIds: { type: [Integer] },
                      })

      define_resource(name: :addLinks,
                      parameter:
                      {
                        query: { type: Structs::AddLinksQueryStorable }
                      })

      define_resource(name: :queryPackages,
                      parameter:
                      {
                        query: { type: Structs::PackageQueryStorable }
                      })

      define_resource(name: :removeLinks,
                      parameter:
                      {
                        linkIds: { type: [[Integer]], default: [] },
                        packageIds: { type: [[Integer]], default: [] }
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
