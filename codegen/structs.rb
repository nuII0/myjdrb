require 'myjdrb/structs/base'

module Myjdrb
  module Struct
      class APIQuery < Base
        def initialize(
          empty: false,
          maxResults: 0,
          startAt: 0
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class Account < Base
        def initialize(
          enabled: ,
          errorString: ,
          errorType: ,
          hostname: ,
          trafficLeft: ,
          trafficMax: ,
          username: ,
          uuid: ,
          valid: ,
          validUntil:
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class AccountQuery < Base
        def initialize(
          enabled: false,
          error: false,
          maxResults: 0,
          startAt: 0,
          trafficLeft: false,
          trafficMax: false,
          userName: false,
          uuidlist: [],
          valid: false,
          validUntil: false
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class AddLinksQuery < Base
        def initialize(
          assignJobID: false,
          autoExtract: false,
          autostart: false,
          comment: "null",
          dataURLs: ,
          deepDecrypt: false,
          destinationFolder: "null",
          downloadPassword: "null",
          extractPassword: "null",
          links: "null",
          overwritePackagizerRules: false,
          packageName: "null",
          priority: ,
          sourceUrl: "null",
          sourceurl: "null"
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class AdvancedConfigAPIEntry < Base
        def initialize(
          abstractType: ,
          defaultValue: ,
          docs: ,
          enumLabel: ,
          enumOptions: ,
          interfaceName: ,
          key: ,
          storage: ,
          type: ,
          value: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class AdvancedConfigQuery < Base
        def initialize(
          configInterface: "null",
          defaultValues: false,
          description: false,
          enumInfo: false,
          includeExtensions: false,
          pattern: "null",
          values: false
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class ArchiveSettings < Base
        def initialize(
          archiveId: ,
          autoExtract: ,
          extractPath: ,
          finalPassword: ,
          passwords: ,
          removeDownloadLinksAfterExtraction: ,
          removeFilesAfterExtraction: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class ArchiveStatus < Base
        def initialize(
          archiveId: ,
          archiveName: ,
          controllerId: ,
          controllerStatus: ,
          states: ,
          type: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class BasicAuthentication < Base
        def initialize(
          created: ,
          enabled: ,
          hostmask: ,
          id: ,
          lastValidated: ,
          password: ,
          type: ,
          username: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class CaptchaJob < Base
        def initialize(
          captchaCategory: ,
          created: ,
          explain: ,
          hoster: ,
          id: ,
          link: ,
          remaining: ,
          timeout: ,
          type: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class CnlQuery < Base
        def initialize(
          autostart: false,
          comment: "null",
          crypted: "null",
          dir: "null",
          jk: "null",
          key: "null",
          orgReferrer: "null",
          orgSource: "null",
          packageName: "null",
          passwords: [],
          permission: false,
          referrer: "null",
          source: "null",
          urls: "null"
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class CrawledLink < Base
        def initialize(
          availability: ,
          bytesTotal: ,
          comment: ,
          downloadPassword: ,
          enabled: ,
          host: ,
          name: ,
          packageUUID: ,
          priority: ,
          url: ,
          uuid: ,
          variant: ,
          variants: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class CrawledLinkQuery < Base
        def initialize(
          availability: false,
          bytesTotal: false,
          comment: false,
          enabled: false,
          host: false,
          jobUUIDs: ,
          maxResults: 0,
          packageUUIDs: ,
          password: false,
          priority: false,
          startAt: 0,
          status: false,
          url: false,
          variantID: false,
          variantIcon: false,
          variantName: false,
          variants: false
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class CrawledPackage < Base
        def initialize(
          bytesTotal: ,
          childCount: ,
          comment: ,
          downloadPassword: ,
          enabled: ,
          hosts: ,
          name: ,
          offlineCount: ,
          onlineCount: ,
          priority: ,
          saveTo: ,
          tempUnknownCount: ,
          unknownCount: ,
          uuid: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class CrawledPackageQuery < Base
        def initialize(
          availableOfflineCount: false,
          availableOnlineCount: false,
          availableTempUnknownCount: false,
          availableUnknownCount: false,
          bytesTotal: false,
          childCount: false,
          comment: false,
          enabled: false,
          hosts: false,
          maxResults: 0,
          packageUUIDs: ,
          priority: false,
          saveTo: false,
          startAt: 0,
          status: false
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class DialogInfo < Base
        def initialize(
          properties: ,
          type: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class DialogTypeInfo < Base
        def initialize(
          in: ,
          out: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class DownloadLink < Base
        def initialize(
          addedDate: ,
          bytesLoaded: ,
          bytesTotal: ,
          comment: ,
          downloadPassword: ,
          enabled: ,
          eta: ,
          extractionStatus: ,
          finished: ,
          finishedDate: ,
          host: ,
          name: ,
          packageUUID: ,
          priority: ,
          running: ,
          skipped: ,
          speed: ,
          status: ,
          statusIconKey: ,
          url: ,
          uuid: 
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
          label: ,
          name: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class Extension < Base
        def initialize(
          configInterface: ,
          description: ,
          enabled: ,
          iconKey: ,
          id: ,
          installed: ,
          name: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class ExtensionQuery < Base
        def initialize(
          configInterface: false,
          description: false,
          enabled: false,
          iconKey: false,
          installed: false,
          name: false,
          pattern: "null"
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class FilePackage < Base
        def initialize(
          infoMap: ,
          name: ,
          uuid: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class IconDescriptor < Base
        def initialize(
          cls: ,
          key: ,
          prps: ,
          rsc: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class JobLinkCrawler < Base
        def initialize(
          broken: ,
          checking: ,
          crawled: ,
          crawlerId: ,
          crawling: ,
          filtered: ,
          jobId: ,
          unhandled: 
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
          id: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class LinkCrawlerJobsQuery < Base
        def initialize(
          collectorInfo: false,
          jobIds: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class LinkQuery < Base
        def initialize(
          addedDate: false,
          bytesLoaded: false,
          bytesTotal: false,
          comment: false,
          enabled: false,
          eta: false,
          extractionStatus: false,
          finished: false,
          finishedDate: false,
          host: false,
          jobUUIDs: ,
          maxResults: 0,
          packageUUIDs: ,
          password: false,
          priority: false,
          running: false,
          skipped: false,
          speed: false,
          startAt: 0,
          status: false,
          url: false
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class LinkStatus < Base
        def initialize(
          host: ,
          linkCheckID: ,
          name: ,
          size: ,
          status: ,
          url: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class LinkVariant < Base
        def initialize(
          iconKey: ,
          id: ,
          name: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class LogFolder < Base
        def initialize(
          created: ,
          current: ,
          lastModified: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class MenuStructure < Base
        def initialize(
          children: ,
          icon: ,
          id: ,
          name: ,
          type: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class MyJDMenuItem < Base
        def initialize(
          children: ,
          icon: ,
          id: ,
          name: ,
          type: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class PackageQuery < Base
        def initialize(
          bytesLoaded: false,
          bytesTotal: false,
          childCount: false,
          comment: false,
          enabled: false,
          eta: false,
          finished: false,
          hosts: false,
          maxResults: 0,
          packageUUIDs: ,
          priority: false,
          running: false,
          saveTo: false,
          speed: false,
          startAt: 0,
          status: false
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class Plugin < Base
        def initialize(
          abstractType: ,
          className: ,
          defaultValue: ,
          displayName: ,
          docs: ,
          enumLabel: ,
          enumOptions: ,
          interfaceName: ,
          key: ,
          pattern: ,
          storage: ,
          type: ,
          value: ,
          version: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class PluginConfigEntry < Base
        def initialize(
          abstractType: ,
          defaultValue: ,
          docs: ,
          enumLabel: ,
          enumOptions: ,
          interfaceName: ,
          key: ,
          storage: ,
          type: ,
          value: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class PluginsQuery < Base
        def initialize(
          pattern: false,
          version: false
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class PollingResult < Base
        def initialize(
          eventData: ,
          eventName: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class PublisherResponse < Base
        def initialize(
          eventids: ,
          publisher: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class SubscriptionResponse < Base
        def initialize(
          exclusions: ,
          maxKeepalive: ,
          maxPolltimeout: ,
          subscribed: ,
          subscriptionid: ,
          subscriptions: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

      class SubscriptionStatusResponse < Base
        def initialize(
          queueSize: ,
          subscribed: ,
          subscriptionid: 
        )
          make_instance_variables method(__method__).parameters, binding
        end
      end

  end
end
