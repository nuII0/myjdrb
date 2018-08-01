require 'myjdrb/structs/base'

module Myjdrb
  module Structs
    class LinkQueryStorable < Base
      def initialize(
        packageUUIDs: [],
        bytesTotal: false,
        comment: false,
        status: false,
        enabled: false,
        maxResults: -1,
        startAt: 0,
        host: false,
        url: false,
        bytesLoaded: false,
        speed: false,
        eta: false,
        finished: false,
        priority: false,
        running: false,
        skipped: false,
        extractionStatus: false)
        make_instance_variables method(__method__).parameters, binding
      end

      def add_package_uuid uuid
        @packageUUIDs = add_to_comma_separated_string @packageUUIDs, uuid
      end
    end
  end
end
