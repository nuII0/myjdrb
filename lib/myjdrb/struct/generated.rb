# This file is auto generated
require 'myjdrb/struct/base'

module Myjdrb
  module Struct
      class APIQuery < Base
        def initialize(
          empty: true,
          maxResults: -1,
          startAt: -1
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
          assignJobID: false,
          autoExtract: false,
          autostart: false,
          comment: "null",
          dataURLs: [],
          deepDecrypt: false,
          destinationFolder: "null",
          downloadPassword: "null",
          extractPassword: "null",
          links: "null",
          overwritePackagizerRules: false,
          packageName: "null",
          priority: "DEFAULT",
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
          defaultValues: true,
          description: true,
          enumInfo: true,
          includeExtensions: true,
          pattern: "null",
          values: true
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
          permission: true,
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
          configInterface: true,
          description: true,
          enabled: true,
          iconKey: true,
          installed: true,
          name: true,
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
          pattern: true,
          version: true
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
