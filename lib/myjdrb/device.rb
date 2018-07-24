require_relative 'mixin/initializable'
require_relative 'mixin/member_equality'

require_relative 'resources'

module Myjdrb
  # Running JDownloader instances are modeled as devices
  class Device
    include Myjdrb::Mixin::Initializable
    include Myjdrb::Mixin::MemberEquality

    def initialize(id:, type:, name:, status:, executer:, sessiontoken:)
        make_instance_variables method(__method__).parameters, binding
    end

    # @return [Config] configuration for device
    def config
      get_resource(Config)
    end

    def link_grabber_v2
      get_resource(LinkGrabberV2)
    end
    alias :linkgrabberV2 :link_grabber_v2
    alias :linkgrabberv2 :link_grabber_v2

    def update
      get_resource(Update)
    end

    def accounts_v2
      get_resource(AccountsV2)
    end
    alias :accountsV2 :accounts_v2
    alias :accountsv2 :accounts_v2

    def content_v2
      get_resource(ContentV2)
    end
    alias :contentV2 :content_v2
    alias :contentv2 :content_v2

    def download_controller
      get_resource(DownloadController)
    end
    alias :downloadcontroller :download_controller

    def events
      get_resource(Events)
    end

    def extraction
      get_resource(Extraction)
    end

    def system
      get_resource(System)
    end

    def captcha
      get_resource(Captcha)
    end

    def download_events
      get_resource(DownloadEvents)
    end

    def jd
      get_resource(Jd)
    end
    alias :downloadevents :download_events

    private

    def get_resource clazz
      var = "@#{clazz.name.split('::').last.downcase}"

      unless instance_variable_defined? var
        instance_variable_set(var, clazz.new(sessiontoken: @sessiontoken,
                                        device_id: @id,
                                        executer: @executer))
      end
      return instance_variable_get var
    end





  end
end
