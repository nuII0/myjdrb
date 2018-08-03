require 'myjdrb/struct/base'
require 'myjdrb/enum/generated'

module Myjdrb
  module Struct
      class APIQuery < Base
        def initialize(
          empty: true,
          forNullKey: "",
          maxResults: -1,
          startAt: 0
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class Account < Base
        def initialize(
          enabled: true,
          errorString: "",
          errorType: "",
          hostname: "",
          trafficLeft: 0,
          trafficMax: 0,
          username: "",
          uuid: 0,
          valid: true,
          validUntil: 0
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class Account < Base
        def initialize(
          hostname: "",
          infoMap: "",
          uuid: 0
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class AccountQuery < Base
        def initialize(
          enabled: true,
          error: true,
          maxResults: -1,
          startAt: 0,
          trafficLeft: true,
          trafficMax: true,
          userName: true,
          uuidlist: [],
          valid: true,
          validUntil: true
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class AddLinksQuery < Base
        def initialize(
          assignJobID: true,
          autoExtract: true,
          autostart: true,
          dataURLs: [],
          deepDecrypt: true,
          destinationFolder: "",
          downloadPassword: "",
          extractPassword: "",
          links: "",
          overwritePackagizerRules: true,
          packageName: "",
          priority: Myjdrb::Enum::Priority.new('DEFAULT'),
          sourceUrl: ""
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class AdvancedConfigAPIEntry < Base
        def initialize(
          abstractType: ,
          defaultValue: ,
          docs: "",
          enumLabel: "",
          enumOptions: ,
          interfaceName: "",
          key: "",
          storage: "",
          type: "",
          value: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class AdvancedConfigQuery < Base
        def initialize(
          configInterface: "",
          defaultValues: true,
          description: true,
          enumInfo: true,
          includeExtensions: true,
          pattern: "",
          values: true
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class ArchiveSettings < Base
        def initialize(
          archiveId: "",
          autoExtract: true,
          extractPath: "",
          finalPassword: "",
          passwords: [],
          removeDownloadLinksAfterExtraction: true,
          removeFilesAfterExtraction: true
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class ArchiveStatus < Base
        def initialize(
          archiveId: "",
          archiveName: "",
          controllerId: 0,
          controllerStatus: ,
          states: "",
          type: ""
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class BasicAuthentication < Base
        def initialize(
          created: 0,
          enabled: true,
          hostmask: "",
          id: 0,
          lastValidated: 0,
          password: "",
          type: ,
          username: ""
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class CaptchaJob < Base
        def initialize(
          captchaCategory: "",
          created: 0,
          explain: "",
          hoster: "",
          id: 0,
          link: 0,
          timeout: 0,
          type: ""
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class CnlQuery < Base
        def initialize(
          comment: "",
          crypted: "",
          dir: "",
          jk: "",
          key: "",
          orgReferrer: "",
          orgSource: "",
          packageName: "",
          passwords: [],
          permission: true,
          referrer: "",
          source: "",
          urls: ""
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class CrawledLink < Base
        def initialize(
          availability: ,
          bytesTotal: 0,
          comment: "",
          downloadPassword: "",
          enabled: true,
          host: "",
          name: "",
          packageUUID: 0,
          priority: Myjdrb::Enum::Priority.new('DEFAULT'),
          url: "",
          uuid: 0,
          variant: ,
          variants: true
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class CrawledLink < Base
        def initialize(
          infoMap: "",
          name: "",
          uniqueID: 0,
          uuid: 0
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class CrawledLinkQuery < Base
        def initialize(
          availability: true,
          bytesTotal: true,
          comment: true,
          enabled: true,
          host: true,
          jobUUIDs: [],
          maxResults: -1,
          packageUUIDs: [],
          password: true,
          priority: true,
          startAt: 0,
          status: true,
          url: true,
          variantID: true,
          variantIcon: true,
          variantName: true,
          variants: true
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class CrawledPackage < Base
        def initialize(
          infoMap: "",
          name: "",
          uuid: 0
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class CrawledPackage < Base
        def initialize(
          bytesTotal: 0,
          childCount: 0,
          comment: "",
          downloadPassword: "",
          enabled: true,
          hosts: [],
          name: "",
          offlineCount: 0,
          onlineCount: 0,
          priority: Myjdrb::Enum::Priority.new('DEFAULT'),
          saveTo: "",
          tempUnknownCount: 0,
          unknownCount: 0,
          uuid: 0
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class CrawledPackageQuery < Base
        def initialize(
          availableOfflineCount: true,
          availableOnlineCount: true,
          availableTempUnknownCount: true,
          availableUnknownCount: true,
          bytesTotal: true,
          childCount: true,
          comment: true,
          enabled: true,
          hosts: true,
          maxResults: -1,
          packageUUIDs: [],
          priority: true,
          saveTo: true,
          startAt: 0,
          status: true
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class DialogInfo < Base
        def initialize(
          properties: "",
          type: ""
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class DialogTypeInfo < Base
        def initialize(
          in: "",
          out: ""
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class DownloadLink < Base
        def initialize(
          infoMap: "",
          name: "",
          uuid: 0
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class DownloadLink < Base
        def initialize(
          addedDate: 0,
          bytesLoaded: 0,
          bytesTotal: 0,
          comment: "",
          downloadPassword: "",
          enabled: true,
          eta: 0,
          extractionStatus: "",
          finished: true,
          finishedDate: 0,
          host: "",
          name: "",
          packageUUID: 0,
          priority: Myjdrb::Enum::Priority.new('DEFAULT'),
          running: true,
          skipped: true,
          speed: 0,
          status: "",
          statusIconKey: "",
          url: "",
          uuid: 0
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class DownloadListDiff < Base
        def initialize(
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class EnumOption < Base
        def initialize(
          label: "",
          name: ""
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class Extension < Base
        def initialize(
          configInterface: "",
          description: "",
          enabled: true,
          iconKey: "",
          id: "",
          installed: true,
          name: ""
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class ExtensionQuery < Base
        def initialize(
          configInterface: true,
          description: true,
          enabled: true,
          iconKey: true,
          installed: true,
          name: true,
          pattern: ""
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class FilePackage < Base
        def initialize(
          infoMap: "",
          name: "",
          uuid: 0
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class FilePackage < Base
        def initialize(
          activeTask: "",
          bytesLoaded: 0,
          bytesTotal: 0,
          childCount: 0,
          comment: "",
          downloadPassword: "",
          enabled: true,
          eta: 0,
          finished: true,
          hosts: [],
          name: "",
          priority: Myjdrb::Enum::Priority.new('DEFAULT'),
          running: true,
          saveTo: "",
          speed: 0,
          status: "",
          statusIconKey: "",
          uuid: 0
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class IconDescriptor < Base
        def initialize(
          cls: "",
          key: "",
          prps: "",
          rsc: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class JobLinkCrawler < Base
        def initialize(
          broken: 0,
          checking: true,
          crawled: 0,
          crawlerId: 0,
          crawling: true,
          filtered: 0,
          jobId: 0,
          unhandled: 0
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class LinkCheckResult < Base
        def initialize(
          links: ,
          status: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class LinkCollectingJob < Base
        def initialize(
          id: 0
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class LinkCrawlerJobsQuery < Base
        def initialize(
          collectorInfo: true,
          jobIds: []
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class LinkQuery < Base
        def initialize(
          addedDate: true,
          bytesLoaded: true,
          bytesTotal: true,
          comment: true,
          enabled: true,
          eta: true,
          extractionStatus: true,
          finished: true,
          finishedDate: true,
          host: true,
          jobUUIDs: [],
          maxResults: -1,
          packageUUIDs: [],
          password: true,
          priority: true,
          running: true,
          skipped: true,
          speed: true,
          startAt: 0,
          status: true,
          url: true
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class LinkStatus < Base
        def initialize(
          host: "",
          linkCheckID: "",
          name: "",
          size: 0,
          status: ,
          url: ""
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class LinkVariant < Base
        def initialize(
          iconKey: "",
          id: "",
          name: ""
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class LinkVariant < Base
        def initialize(
          iconKey: "",
          id: "",
          name: ""
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class LogFolder < Base
        def initialize(
          created: 0,
          current: true,
          lastModified: 0
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class MenuStructure < Base
        def initialize(
          children: ,
          icon: "",
          id: "",
          name: "",
          type: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class MyJDMenuItem < Base
        def initialize(
          children: ,
          icon: "",
          id: "",
          name: "",
          type: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class PackageQuery < Base
        def initialize(
          bytesLoaded: true,
          bytesTotal: true,
          childCount: true,
          comment: true,
          enabled: true,
          eta: true,
          finished: true,
          hosts: true,
          maxResults: -1,
          packageUUIDs: [],
          priority: true,
          running: true,
          saveTo: true,
          speed: true,
          startAt: 0,
          status: true
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class Plugin < Base
        def initialize(
          abstractType: ,
          className: "",
          defaultValue: ,
          displayName: "",
          docs: "",
          enumLabel: "",
          enumOptions: ,
          interfaceName: "",
          key: "",
          pattern: "",
          storage: "",
          type: "",
          value: ,
          version: ""
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class PluginConfigEntry < Base
        def initialize(
          abstractType: ,
          defaultValue: ,
          docs: "",
          enumLabel: "",
          enumOptions: ,
          interfaceName: "",
          key: "",
          storage: "",
          type: "",
          value: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class PluginsQuery < Base
        def initialize(
          pattern: true,
          version: true
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class PollingResult < Base
        def initialize(
          eventData: "",
          eventName: ""
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class PublisherResponse < Base
        def initialize(
          eventids: [],
          publisher: ""
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class SubscriptionResponse < Base
        def initialize(
          exclusions: [],
          maxKeepalive: 0,
          maxPolltimeout: 0,
          subscribed: true,
          subscriptionid: 0,
          subscriptions: []
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class SubscriptionStatusResponse < Base
        def initialize(
          queueSize: 0,
          subscribed: true,
          subscriptionid: 0
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

  end
end

