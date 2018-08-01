require 'myjdrb/structs/base'

module Myjdrb
  module Structs
    class PackageQueryStorable < Base
      def initialize(
        saveTo: true,
        childCount: true,
        hosts: true,
        startAt: 0,
        maxResults: 10)
        make_instance_variables method(__method__).parameters, binding
      end
    end
  end
end
