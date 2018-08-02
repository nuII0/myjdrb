require_relative 'mixin/initializable'
require_relative 'mixin/member_equality'

require 'myjdrb/resources/generated'

module Myjdrb
  # Running JDownloader instances are modeled as devices
  class Device
    include Myjdrb::Mixin::Initializable
    include Myjdrb::Mixin::MemberEquality

    using Resource

    def initialize(id:, type:, name:, status:, executer:, sessiontoken:)
      make_instance_variables method(__method__).parameters, binding
    end

    def method_missing(message, *args, &block)
      resource = Resource.constants.find { |r| r.downcase.eql? message.downcase }
      unless resource
        super
      end

      get_resource(resource)
    end

    def respond_to_missing?(message)
      Resource.constants.find { |r| r.downcase.eql? message.downcase } ? true : false
    end

    private

    def get_resource clazz
      var = "@#{clazz.downcase}"

      unless instance_variable_defined? var
        instance_variable_set(var, Resource.const_get(clazz).new(sessiontoken: @sessiontoken,
                                             device_id: @id,
                                             executer: @executer))
      end
      return instance_variable_get var
    end
  end
end
