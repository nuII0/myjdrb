require 'myjdrb/structs/base'

module Myjdrb
  module Queries
    class ApiQuery < Base
      def initialize(
        configInterface:,
        defaultValues:,
        description:,
        enumInfo:,
        includeExtensions:,
        pattern:,
        values:)
        make_instance_variables method(__method__).parameters, binding
      end
    end
  end
end
