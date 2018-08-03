require 'myjdrb/resource/base'

module Myjdrb
	module Resource
		class Captcha < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "captcha" )

				define_resource(
					name: :getCaptcha,
					parameter:
					{
					},
					return_type: String
				)
				define_resource(
					name: :get,
					parameter:
					{
						id:
						{
							type: Integer
						}
					},
					return_type: nil
				)
				define_resource(
					name: :get,
					parameter:
					{
						id:
						{
							type: Integer
						},
						format:
						{
							type: String
						}
					},
					return_type: nil
				)
				define_resource(
					name: :getCaptchaJob,
					parameter:
					{
						id:
						{
							type: Integer
						}
					},
					return_type: CaptchaJob
				)
				define_resource(
					name: :list,
					parameter:
					{
					},
					return_type: [CaptchaJob]
				)
				define_resource(
					name: :skip,
					parameter:
					{
						id:
						{
							type: Integer
						},
						type:
						{
							type: SkipRequest
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :skip,
					parameter:
					{
						id:
						{
							type: Integer
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :solve,
					parameter:
					{
						id:
						{
							type: Integer
						},
						result:
						{
							type: String
						},
						resultFormat:
						{
							type: String
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :solve,
					parameter:
					{
						id:
						{
							type: Integer
						},
						result:
						{
							type: String
						}
					},
					return_type: TrueClass
				)
			end
		end
		class Root < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "root" )

				define_resource(
					name: :flash,
					parameter:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :crossdomain,
					parameter:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :favicon,
					parameter:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :flashgot,
					parameter:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :jdcheck,
					parameter:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :jdcheckjson,
					parameter:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :flash,
					parameter:
					{
					},
					return_type: nil
				)
			end
		end
		class Accounts < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "accounts" )

				define_resource(
					name: :addAccount,
					parameter:
					{
						premiumHoster:
						{
							type: String
						},
						username:
						{
							type: String
						},
						password:
						{
							type: String
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :disableAccounts,
					parameter:
					{
						ids:
						{
							type: Array
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :enableAccounts,
					parameter:
					{
						ids:
						{
							type: Array
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :getAccountInfo,
					parameter:
					{
						id:
						{
							type: Integer
						}
					},
					return_type: Account
				)
				define_resource(
					name: :getPremiumHosterUrl,
					parameter:
					{
						hoster:
						{
							type: String
						}
					},
					return_type: String
				)
				define_resource(
					name: :listPremiumHoster,
					parameter:
					{
					},
					return_type: [String]
				)
				define_resource(
					name: :listPremiumHosterUrls,
					parameter:
					{
					},
					return_type: String
				)
				define_resource(
					name: :premiumHosterIcon,
					parameter:
					{
						premiumHoster:
						{
							type: String
						}
					},
					return_type: nil
				)
				define_resource(
					name: :queryAccounts,
					parameter:
					{
						query:
						{
							type: APIQuery
						}
					},
					return_type: [Account]
				)
				define_resource(
					name: :removeAccounts,
					parameter:
					{
						ids:
						{
							type: [Integer]
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :setEnabledState,
					parameter:
					{
						enabled:
						{
							type: TrueClass
						},
						ids:
						{
							type: [Integer]
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :updateAccount,
					parameter:
					{
						accountId:
						{
							type: Integer
						},
						username:
						{
							type: String
						},
						password:
						{
							type: String
						}
					},
					return_type: TrueClass
				)
			end
		end
		class Accountsv2 < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "accountsV2" )

				define_resource(
					name: :addAccount,
					parameter:
					{
						premiumHoster:
						{
							type: String
						},
						username:
						{
							type: String
						},
						password:
						{
							type: String
						}
					},
					return_type: nil
				)
				define_resource(
					name: :addBasicAuth,
					parameter:
					{
						type:
						{
							type: Type
						},
						hostmask:
						{
							type: String
						},
						username:
						{
							type: String
						},
						password:
						{
							type: String
						}
					},
					return_type: Integer
				)
				define_resource(
					name: :disableAccounts,
					parameter:
					{
						ids:
						{
							type: [Integer]
						}
					},
					return_type: nil
				)
				define_resource(
					name: :enableAccounts,
					parameter:
					{
						ids:
						{
							type: [Integer]
						}
					},
					return_type: nil
				)
				define_resource(
					name: :getPremiumHosterUrl,
					parameter:
					{
						hoster:
						{
							type: String
						}
					},
					return_type: String
				)
				define_resource(
					name: :listAccounts,
					parameter:
					{
						query:
						{
							type: AccountQuery
						}
					},
					return_type: [Account]
				)
				define_resource(
					name: :listBasicAuth,
					parameter:
					{
					},
					return_type: [BasicAuthentication]
				)
				define_resource(
					name: :listPremiumHoster,
					parameter:
					{
					},
					return_type: [String]
				)
				define_resource(
					name: :listPremiumHosterUrls,
					parameter:
					{
					},
					return_type: String
				)
				define_resource(
					name: :refreshAccounts,
					parameter:
					{
						ids:
						{
							type: [Integer]
						}
					},
					return_type: nil
				)
				define_resource(
					name: :removeAccounts,
					parameter:
					{
						ids:
						{
							type: [Integer]
						}
					},
					return_type: nil
				)
				define_resource(
					name: :removeBasicAuths,
					parameter:
					{
						ids:
						{
							type: [Integer]
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :setUserNameAndPassword,
					parameter:
					{
						accountId:
						{
							type: Integer
						},
						username:
						{
							type: String
						},
						password:
						{
							type: String
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :updateBasicAuth,
					parameter:
					{
						updatedEntry:
						{
							type: BasicAuthentication
						}
					},
					return_type: TrueClass
				)
			end
		end
		class Captchaforward < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "captchaforward" )

				define_resource(
					name: :createJobRecaptchaV2,
					parameter:
					{
						 String:
						{
							type: nil
						},
						 String:
						{
							type: nil
						},
						 String:
						{
							type: nil
						},
						 String:
						{
							type: nil
						}
					},
					return_type: Integer
				)
				define_resource(
					name: :getResult,
					parameter:
					{
						 long:
						{
							type: nil
						}
					},
					return_type: String
				)
			end
		end
		class Config < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "config" )

				define_resource(
					name: :get,
					parameter:
					{
						interfaceName:
						{
							type: String
						},
						storage:
						{
							type: String
						},
						key:
						{
							type: String
						}
					},
					return_type: Object
				)
				define_resource(
					name: :getDefault,
					parameter:
					{
						interfaceName:
						{
							type: String
						},
						storage:
						{
							type: String
						},
						key:
						{
							type: String
						}
					},
					return_type: Object
				)
				define_resource(
					name: :list,
					parameter:
					{
					},
					return_type: [AdvancedConfigAPIEntry]
				)
				define_resource(
					name: :list,
					parameter:
					{
						pattern:
						{
							type: String
						},
						returnDescription:
						{
							type: TrueClass
						},
						returnValues:
						{
							type: TrueClass
						},
						returnDefaultValues:
						{
							type: TrueClass
						},
						returnEnumInfo:
						{
							type: TrueClass
						}
					},
					return_type: [AdvancedConfigAPIEntry]
				)
				define_resource(
					name: :list,
					parameter:
					{
						pattern:
						{
							type: String
						},
						returnDescription:
						{
							type: TrueClass
						},
						returnValues:
						{
							type: TrueClass
						},
						returnDefaultValues:
						{
							type: TrueClass
						}
					},
					return_type: [AdvancedConfigAPIEntry]
				)
				define_resource(
					name: :listEnum,
					parameter:
					{
						type:
						{
							type: String
						}
					},
					return_type: [EnumOption]
				)
				define_resource(
					name: :query,
					parameter:
					{
						query:
						{
							type: AdvancedConfigQuery
						}
					},
					return_type: [AdvancedConfigAPIEntry]
				)
				define_resource(
					name: :reset,
					parameter:
					{
						interfaceName:
						{
							type: String
						},
						storage:
						{
							type: String
						},
						key:
						{
							type: String
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :set,
					parameter:
					{
						interfaceName:
						{
							type: String
						},
						storage:
						{
							type: String
						},
						key:
						{
							type: String
						},
						value:
						{
							type: Object
						}
					},
					return_type: TrueClass
				)
			end
		end
		class Content < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "content" )

				define_resource(
					name: :favicon,
					parameter:
					{
						hostername:
						{
							type: String
						}
					},
					return_type: nil
				)
				define_resource(
					name: :fileIcon,
					parameter:
					{
						filename:
						{
							type: String
						}
					},
					return_type: nil
				)
			end
		end
		class Contentv2 < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "contentV2" )

				define_resource(
					name: :getFavIcon,
					parameter:
					{
						hostername:
						{
							type: String
						}
					},
					return_type: nil
				)
				define_resource(
					name: :getFileIcon,
					parameter:
					{
						filename:
						{
							type: String
						}
					},
					return_type: nil
				)
				define_resource(
					name: :getIcon,
					parameter:
					{
						key:
						{
							type: String
						},
						size:
						{
							type: Integer
						}
					},
					return_type: nil
				)
				define_resource(
					name: :getIconDescription,
					parameter:
					{
						key:
						{
							type: String
						}
					},
					return_type: IconDescriptor
				)
			end
		end
		class Device < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "device" )

				define_resource(
					name: :getDirectConnectionInfos,
					parameter:
					{
					},
					return_type: String
				)
				define_resource(
					name: :getSessionPublicKey,
					parameter:
					{
					},
					return_type: String
				)
				define_resource(
					name: :ping,
					parameter:
					{
					},
					return_type: TrueClass
				)
			end
		end
		class Dialogs < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "dialogs" )

				define_resource(
					name: :answer,
					parameter:
					{
						id:
						{
							type: Integer
						},
						data:
						{
							type: Hash
						}
					},
					return_type: nil
				)
				define_resource(
					name: :get,
					parameter:
					{
						id:
						{
							type: Integer
						},
						icon:
						{
							type: TrueClass
						},
						properties:
						{
							type: TrueClass
						}
					},
					return_type: DialogInfo
				)
				define_resource(
					name: :getTypeInfo,
					parameter:
					{
						dialogType:
						{
							type: String
						}
					},
					return_type: DialogTypeInfo
				)
				define_resource(
					name: :list,
					parameter:
					{
					},
					return_type: [Integer]
				)
			end
		end
		class Downloadcontroller < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "downloadcontroller" )

				define_resource(
					name: :forceDownload,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						}
					},
					return_type: nil
				)
				define_resource(
					name: :getCurrentState,
					parameter:
					{
					},
					return_type: String
				)
				define_resource(
					name: :getSpeedInBps,
					parameter:
					{
					},
					return_type: Integer
				)
				define_resource(
					name: :pause,
					parameter:
					{
						value:
						{
							type: TrueClass
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :start,
					parameter:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :stop,
					parameter:
					{
					},
					return_type: TrueClass
				)
			end
		end
		class Downloadevents < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "downloadevents" )

				define_resource(
					name: :queryLinks,
					parameter:
					{
						queryParams:
						{
							type: LinkQuery
						},
						diffID:
						{
							type: Integer
						}
					},
					return_type: DownloadListDiff
				)
				define_resource(
					name: :setStatusEventInterval,
					parameter:
					{
						channelID:
						{
							type: Integer
						},
						interval:
						{
							type: Integer
						}
					},
					return_type: TrueClass
				)
			end
		end
		class Downloads < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "downloads" )

				define_resource(
					name: :disableLinks,
					parameter:
					{
						linkIds:
						{
							type: Array
						},
						packageIds:
						{
							type: Array
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :disableLinks,
					parameter:
					{
						linkIds:
						{
							type: Array
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :enableLinks,
					parameter:
					{
						linkIds:
						{
							type: Array
						},
						packageIds:
						{
							type: Array
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :enableLinks,
					parameter:
					{
						linkIds:
						{
							type: Array
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :forceDownload,
					parameter:
					{
						linkIds:
						{
							type: Array
						},
						packageIds:
						{
							type: Array
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :forceDownload,
					parameter:
					{
						linkIds:
						{
							type: Array
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :getChildrenChanged,
					parameter:
					{
						structureWatermark:
						{
							type: Integer
						}
					},
					return_type: Integer
				)
				define_resource(
					name: :getJDState,
					parameter:
					{
					},
					return_type: String
				)
				define_resource(
					name: :moveLinks,
					parameter:
					{
						query:
						{
							type: APIQuery
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :movePackages,
					parameter:
					{
						query:
						{
							type: APIQuery
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :packageCount,
					parameter:
					{
					},
					return_type: Integer
				)
				define_resource(
					name: :pause,
					parameter:
					{
						value:
						{
							type: TrueClass
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :queryLinks,
					parameter:
					{
						queryParams:
						{
							type: APIQuery
						}
					},
					return_type: [DownloadLink]
				)
				define_resource(
					name: :queryPackages,
					parameter:
					{
						queryParams:
						{
							type: APIQuery
						}
					},
					return_type: [FilePackage]
				)
				define_resource(
					name: :removeLinks,
					parameter:
					{
						linkIds:
						{
							type: Array
						},
						packageIds:
						{
							type: Array
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :removeLinks,
					parameter:
					{
						linkIds:
						{
							type: Array
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :renamePackage,
					parameter:
					{
						packageId:
						{
							type: Integer
						},
						newName:
						{
							type: String
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :resetLinks,
					parameter:
					{
						linkIds:
						{
							type: Array
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :resetLinks,
					parameter:
					{
						linkIds:
						{
							type: Array
						},
						packageIds:
						{
							type: Array
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :speed,
					parameter:
					{
					},
					return_type: Integer
				)
				define_resource(
					name: :start,
					parameter:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :stop,
					parameter:
					{
					},
					return_type: TrueClass
				)
			end
		end
		class Downloadsv2 < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "downloadsV2" )

				define_resource(
					name: :cleanup,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						},
						action:
						{
							type: Action
						},
						mode:
						{
							type: Mode
						},
						selectionType:
						{
							type: SelectionType
						}
					},
					return_type: nil
				)
				define_resource(
					name: :forceDownload,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :getDownloadUrls,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						},
						urlDisplayType:
						{
							type: [String]
						}
					},
					return_type: String
				)
				define_resource(
					name: :getStopMark,
					parameter:
					{
					},
					return_type: Integer
				)
				define_resource(
					name: :getStopMarkedLink,
					parameter:
					{
					},
					return_type: DownloadLink
				)
				define_resource(
					name: :getStructureChangeCounter,
					parameter:
					{
						oldCounterValue:
						{
							type: Integer
						}
					},
					return_type: Integer
				)
				define_resource(
					name: :moveLinks,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						afterLinkID:
						{
							type: Integer
						},
						destPackageID:
						{
							type: Integer
						}
					},
					return_type: nil
				)
				define_resource(
					name: :movePackages,
					parameter:
					{
						packageIds:
						{
							type: [Integer]
						},
						afterDestPackageId:
						{
							type: Integer
						}
					},
					return_type: nil
				)
				define_resource(
					name: :movetoNewPackage,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						pkgIds:
						{
							type: [Integer]
						},
						newPkgName:
						{
							type: String
						},
						downloadPath:
						{
							type: String
						}
					},
					return_type: nil
				)
				define_resource(
					name: :packageCount,
					parameter:
					{
					},
					return_type: Integer
				)
				define_resource(
					name: :queryLinks,
					parameter:
					{
						queryParams:
						{
							type: LinkQuery
						}
					},
					return_type: [DownloadLink]
				)
				define_resource(
					name: :queryPackages,
					parameter:
					{
						queryParams:
						{
							type: PackageQuery
						}
					},
					return_type: [FilePackage]
				)
				define_resource(
					name: :removeLinks,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						}
					},
					return_type: nil
				)
				define_resource(
					name: :removeStopMark,
					parameter:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :renameLink,
					parameter:
					{
						linkId:
						{
							type: Integer
						},
						newName:
						{
							type: String
						}
					},
					return_type: nil
				)
				define_resource(
					name: :renamePackage,
					parameter:
					{
						packageId:
						{
							type: Integer
						},
						newName:
						{
							type: String
						}
					},
					return_type: nil
				)
				define_resource(
					name: :resetLinks,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						}
					},
					return_type: nil
				)
				define_resource(
					name: :resumeLinks,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						}
					},
					return_type: nil
				)
				define_resource(
					name: :setDownloadDirectory,
					parameter:
					{
						directory:
						{
							type: String
						},
						packageIds:
						{
							type: [Integer]
						}
					},
					return_type: nil
				)
				define_resource(
					name: :setDownloadPassword,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						},
						pass:
						{
							type: String
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :setEnabled,
					parameter:
					{
						enabled:
						{
							type: TrueClass
						},
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						}
					},
					return_type: nil
				)
				define_resource(
					name: :setPriority,
					parameter:
					{
						priority:
						{
							type: Priority
						},
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						}
					},
					return_type: nil
				)
				define_resource(
					name: :setStopMark,
					parameter:
					{
						linkId:
						{
							type: Integer
						},
						packageId:
						{
							type: Integer
						}
					},
					return_type: nil
				)
				define_resource(
					name: :splitPackageByHoster,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						pkgIds:
						{
							type: [Integer]
						}
					},
					return_type: nil
				)
				define_resource(
					name: :startOnlineStatusCheck,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						}
					},
					return_type: nil
				)
				define_resource(
					name: :unskip,
					parameter:
					{
						packageIds:
						{
							type: [Integer]
						},
						linkIds:
						{
							type: [Integer]
						},
						filterByReason:
						{
							type: Reason
						}
					},
					return_type: TrueClass
				)
			end
		end
		class Events < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "events" )

				define_resource(
					name: :addsubscription,
					parameter:
					{
						subscriptionid:
						{
							type: Integer
						},
						subscriptions:
						{
							type: [String]
						},
						exclusions:
						{
							type: [String]
						}
					},
					return_type: SubscriptionResponse
				)
				define_resource(
					name: :changesubscriptiontimeouts,
					parameter:
					{
						subscriptionid:
						{
							type: Integer
						},
						polltimeout:
						{
							type: Integer
						},
						maxkeepalive:
						{
							type: Integer
						}
					},
					return_type: SubscriptionResponse
				)
				define_resource(
					name: :getsubscription,
					parameter:
					{
						subscriptionid:
						{
							type: Integer
						}
					},
					return_type: SubscriptionResponse
				)
				define_resource(
					name: :getsubscriptionstatus,
					parameter:
					{
						subscriptionid:
						{
							type: Integer
						}
					},
					return_type: SubscriptionStatusResponse
				)
				define_resource(
					name: :listen,
					parameter:
					{
						subscriptionid:
						{
							type: Integer
						}
					},
					return_type: nil
				)
				define_resource(
					name: :listpublisher,
					parameter:
					{
					},
					return_type: [PublisherResponse]
				)
				define_resource(
					name: :removesubscription,
					parameter:
					{
						subscriptionid:
						{
							type: Integer
						},
						subscriptions:
						{
							type: [String]
						},
						exclusions:
						{
							type: [String]
						}
					},
					return_type: SubscriptionResponse
				)
				define_resource(
					name: :setsubscription,
					parameter:
					{
						subscriptionid:
						{
							type: Integer
						},
						subscriptions:
						{
							type: [String]
						},
						exclusions:
						{
							type: [String]
						}
					},
					return_type: SubscriptionResponse
				)
				define_resource(
					name: :subscribe,
					parameter:
					{
						subscriptions:
						{
							type: [String]
						},
						exclusions:
						{
							type: [String]
						}
					},
					return_type: SubscriptionResponse
				)
				define_resource(
					name: :unsubscribe,
					parameter:
					{
						subscriptionid:
						{
							type: Integer
						}
					},
					return_type: SubscriptionResponse
				)
			end
		end
		class Extensions < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "extensions" )

				define_resource(
					name: :install,
					parameter:
					{
						id:
						{
							type: String
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :isEnabled,
					parameter:
					{
						classname:
						{
							type: String
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :isInstalled,
					parameter:
					{
						id:
						{
							type: String
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :list,
					parameter:
					{
						query:
						{
							type: ExtensionQuery
						}
					},
					return_type: [Extension]
				)
				define_resource(
					name: :setEnabled,
					parameter:
					{
						classname:
						{
							type: String
						},
						b:
						{
							type: TrueClass
						}
					},
					return_type: TrueClass
				)
			end
		end
		class Extraction < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "extraction" )

				define_resource(
					name: :addArchivePassword,
					parameter:
					{
						password:
						{
							type: String
						}
					},
					return_type: nil
				)
				define_resource(
					name: :cancelExtraction,
					parameter:
					{
						controllerID:
						{
							type: Integer
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :getArchiveInfo,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						}
					},
					return_type: [ArchiveStatus]
				)
				define_resource(
					name: :getArchiveSettings,
					parameter:
					{
						archiveIds:
						{
							type: [String]
						}
					},
					return_type: [ArchiveSettings]
				)
				define_resource(
					name: :getQueue,
					parameter:
					{
					},
					return_type: [ArchiveStatus]
				)
				define_resource(
					name: :setArchiveSettings,
					parameter:
					{
						archiveId:
						{
							type: String
						},
						archiveSettings:
						{
							type: ArchiveSettings
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :startExtractionNow,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						}
					},
					return_type: String
				)
			end
		end
		class Flash < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "flash" )

				define_resource(
					name: :add,
					parameter:
					{
						password:
						{
							type: String
						},
						source:
						{
							type: String
						},
						url:
						{
							type: String
						}
					},
					return_type: nil
				)
				define_resource(
					name: :add,
					parameter:
					{
						 String:
						{
							type: nil
						},
						 String:
						{
							type: nil
						},
						 String:
						{
							type: nil
						},
						 String:
						{
							type: nil
						}
					},
					return_type: nil
				)
				define_resource(
					name: :add,
					parameter:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :addcnl,
					parameter:
					{
						cnl:
						{
							type: CnlQuery
						}
					},
					return_type: nil
				)
				define_resource(
					name: :addcrypted,
					parameter:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :addcrypted2,
					parameter:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :addcrypted2Remote,
					parameter:
					{
						crypted:
						{
							type: String
						},
						jk:
						{
							type: String
						},
						k:
						{
							type: String
						}
					},
					return_type: nil
				)
			end
		end
		class Jd < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "jd" )

				define_resource(
					name: :doSomethingCool,
					parameter:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :getCoreRevision,
					parameter:
					{
					},
					return_type: Integer
				)
				define_resource(
					name: :refreshPlugins,
					parameter:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :sum,
					parameter:
					{
						a:
						{
							type: Integer
						},
						b:
						{
							type: Integer
						}
					},
					return_type: Integer
				)
				define_resource(
					name: :uptime,
					parameter:
					{
					},
					return_type: Integer
				)
				define_resource(
					name: :version,
					parameter:
					{
					},
					return_type: Integer
				)
			end
		end
		class Linkcollector < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "linkcollector" )

				define_resource(
					name: :addContainer,
					parameter:
					{
						type:
						{
							type: String
						},
						content:
						{
							type: String
						}
					},
					return_type: nil
				)
				define_resource(
					name: :addLinks,
					parameter:
					{
						link:
						{
							type: String
						},
						packageName:
						{
							type: String
						},
						archivePassword:
						{
							type: String
						},
						linkPassword:
						{
							type: String
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :addLinks,
					parameter:
					{
						links:
						{
							type: String
						},
						packageName:
						{
							type: String
						},
						extractPassword:
						{
							type: String
						},
						downloadPassword:
						{
							type: String
						},
						destinationFolder:
						{
							type: String
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :addLinksAndStartDownload,
					parameter:
					{
						links:
						{
							type: String
						},
						packageName:
						{
							type: String
						},
						extractPassword:
						{
							type: String
						},
						downloadPassword:
						{
							type: String
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :disableLinks,
					parameter:
					{
						linkIds:
						{
							type: Array
						},
						packageIds:
						{
							type: Array
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :disableLinks,
					parameter:
					{
						linkIds:
						{
							type: Array
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :enableLinks,
					parameter:
					{
						linkIds:
						{
							type: Array
						},
						packageIds:
						{
							type: Array
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :enableLinks,
					parameter:
					{
						linkIds:
						{
							type: Array
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :getChildrenChanged,
					parameter:
					{
						structureWatermark:
						{
							type: Integer
						}
					},
					return_type: Integer
				)
				define_resource(
					name: :getDownloadFolderHistorySelectionBase,
					parameter:
					{
					},
					return_type: [String]
				)
				define_resource(
					name: :moveLinks,
					parameter:
					{
						query:
						{
							type: APIQuery
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :movePackages,
					parameter:
					{
						query:
						{
							type: APIQuery
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :packageCount,
					parameter:
					{
					},
					return_type: Integer
				)
				define_resource(
					name: :queryLinks,
					parameter:
					{
						queryParams:
						{
							type: APIQuery
						}
					},
					return_type: [CrawledLink]
				)
				define_resource(
					name: :queryPackages,
					parameter:
					{
						queryParams:
						{
							type: APIQuery
						}
					},
					return_type: [CrawledPackage]
				)
				define_resource(
					name: :removeLinks,
					parameter:
					{
						packageIds:
						{
							type: Array
						},
						linkIds:
						{
							type: Array
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :removeLinks,
					parameter:
					{
						linkIds:
						{
							type: Array
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :renameLink,
					parameter:
					{
						packageId:
						{
							type: Integer
						},
						linkId:
						{
							type: Integer
						},
						newName:
						{
							type: String
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :renamePackage,
					parameter:
					{
						packageId:
						{
							type: Integer
						},
						newName:
						{
							type: String
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :startDownloads,
					parameter:
					{
						linkIds:
						{
							type: Array
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :startDownloads,
					parameter:
					{
						linkIds:
						{
							type: Array
						},
						packageIds:
						{
							type: Array
						}
					},
					return_type: TrueClass
				)
			end
		end
		class Linkcrawler < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "linkcrawler" )

				define_resource(
					name: :isCrawling,
					parameter:
					{
					},
					return_type: TrueClass
				)
			end
		end
		class Linkgrabberv2 < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "linkgrabberv2" )

				define_resource(
					name: :abort,
					parameter:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :abort,
					parameter:
					{
						jobId:
						{
							type: Integer
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :addContainer,
					parameter:
					{
						type:
						{
							type: String
						},
						content:
						{
							type: String
						}
					},
					return_type: LinkCollectingJob
				)
				define_resource(
					name: :addLinks,
					parameter:
					{
						query:
						{
							type: AddLinksQuery
						}
					},
					return_type: LinkCollectingJob
				)
				define_resource(
					name: :addVariantCopy,
					parameter:
					{
						linkid:
						{
							type: Integer
						},
						destinationAfterLinkID:
						{
							type: Integer
						},
						destinationPackageID:
						{
							type: Integer
						},
						variantID:
						{
							type: String
						}
					},
					return_type: nil
				)
				define_resource(
					name: :cleanup,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						},
						action:
						{
							type: Action
						},
						mode:
						{
							type: Mode
						},
						selectionType:
						{
							type: SelectionType
						}
					},
					return_type: nil
				)
				define_resource(
					name: :clearList,
					parameter:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :getChildrenChanged,
					parameter:
					{
						structureWatermark:
						{
							type: Integer
						}
					},
					return_type: Integer
				)
				define_resource(
					name: :getDownloadFolderHistorySelectionBase,
					parameter:
					{
					},
					return_type: [String]
				)
				define_resource(
					name: :getDownloadUrls,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						},
						urlDisplayTypes:
						{
							type: [String]
						}
					},
					return_type: String
				)
				define_resource(
					name: :getPackageCount,
					parameter:
					{
					},
					return_type: Integer
				)
				define_resource(
					name: :getVariants,
					parameter:
					{
						linkid:
						{
							type: Integer
						}
					},
					return_type: [LinkVariant]
				)
				define_resource(
					name: :isCollecting,
					parameter:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :moveLinks,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						afterLinkID:
						{
							type: Integer
						},
						destPackageID:
						{
							type: Integer
						}
					},
					return_type: nil
				)
				define_resource(
					name: :movePackages,
					parameter:
					{
						packageIds:
						{
							type: [Integer]
						},
						afterDestPackageId:
						{
							type: Integer
						}
					},
					return_type: nil
				)
				define_resource(
					name: :moveToDownloadlist,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						}
					},
					return_type: nil
				)
				define_resource(
					name: :movetoNewPackage,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						pkgIds:
						{
							type: [Integer]
						},
						newPkgName:
						{
							type: String
						},
						downloadPath:
						{
							type: String
						}
					},
					return_type: nil
				)
				define_resource(
					name: :queryLinkCrawlerJobs,
					parameter:
					{
						query:
						{
							type: LinkCrawlerJobsQuery
						}
					},
					return_type: [JobLinkCrawler]
				)
				define_resource(
					name: :queryLinks,
					parameter:
					{
						queryParams:
						{
							type: CrawledLinkQuery
						}
					},
					return_type: [CrawledLink]
				)
				define_resource(
					name: :queryPackages,
					parameter:
					{
						queryParams:
						{
							type: CrawledPackageQuery
						}
					},
					return_type: [CrawledPackage]
				)
				define_resource(
					name: :removeLinks,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						}
					},
					return_type: nil
				)
				define_resource(
					name: :renameLink,
					parameter:
					{
						linkId:
						{
							type: Integer
						},
						newName:
						{
							type: String
						}
					},
					return_type: nil
				)
				define_resource(
					name: :renamePackage,
					parameter:
					{
						packageId:
						{
							type: Integer
						},
						newName:
						{
							type: String
						}
					},
					return_type: nil
				)
				define_resource(
					name: :setDownloadDirectory,
					parameter:
					{
						directory:
						{
							type: String
						},
						packageIds:
						{
							type: [Integer]
						}
					},
					return_type: nil
				)
				define_resource(
					name: :setDownloadPassword,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						},
						pass:
						{
							type: String
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :setEnabled,
					parameter:
					{
						enabled:
						{
							type: TrueClass
						},
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						}
					},
					return_type: nil
				)
				define_resource(
					name: :setPriority,
					parameter:
					{
						priority:
						{
							type: Priority
						},
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						}
					},
					return_type: nil
				)
				define_resource(
					name: :setVariant,
					parameter:
					{
						linkid:
						{
							type: Integer
						},
						variantID:
						{
							type: String
						}
					},
					return_type: nil
				)
				define_resource(
					name: :splitPackageByHoster,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						pkgIds:
						{
							type: [Integer]
						}
					},
					return_type: nil
				)
				define_resource(
					name: :startOnlineStatusCheck,
					parameter:
					{
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						}
					},
					return_type: nil
				)
			end
		end
		class Log < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "log" )

				define_resource(
					name: :getAvailableLogs,
					parameter:
					{
					},
					return_type: [LogFolder]
				)
				define_resource(
					name: :sendLogFile,
					parameter:
					{
						logFolders:
						{
							type: [LogFolder]
						}
					},
					return_type: String
				)
			end
		end
		class Plugins < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "plugins" )

				define_resource(
					name: :get,
					parameter:
					{
						interfaceName:
						{
							type: String
						},
						displayName:
						{
							type: String
						},
						key:
						{
							type: String
						}
					},
					return_type: Object
				)
				define_resource(
					name: :getAllPluginRegex,
					parameter:
					{
					},
					return_type: String
				)
				define_resource(
					name: :getPluginRegex,
					parameter:
					{
						URL:
						{
							type: String
						}
					},
					return_type: [String]
				)
				define_resource(
					name: :list,
					parameter:
					{
						query:
						{
							type: PluginsQuery
						}
					},
					return_type: [Plugin]
				)
				define_resource(
					name: :query,
					parameter:
					{
						query:
						{
							type: AdvancedConfigQuery
						}
					},
					return_type: [PluginConfigEntry]
				)
				define_resource(
					name: :reset,
					parameter:
					{
						interfaceName:
						{
							type: String
						},
						displayName:
						{
							type: String
						},
						key:
						{
							type: String
						}
					},
					return_type: TrueClass
				)
				define_resource(
					name: :set,
					parameter:
					{
						interfaceName:
						{
							type: String
						},
						displayName:
						{
							type: String
						},
						key:
						{
							type: String
						},
						newValue:
						{
							type: Object
						}
					},
					return_type: TrueClass
				)
			end
		end
		class Polling < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "polling" )

				define_resource(
					name: :poll,
					parameter:
					{
						queryParams:
						{
							type: APIQuery
						}
					},
					return_type: [PollingResult]
				)
			end
		end
		class Reconnect < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "reconnect" )

				define_resource(
					name: :doReconnect,
					parameter:
					{
					},
					return_type: nil
				)
			end
		end
		class Session < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "session" )

				define_resource(
					name: :disconnect,
					parameter:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :handshake,
					parameter:
					{
						user:
						{
							type: String
						},
						password:
						{
							type: String
						}
					},
					return_type: String
				)
			end
		end
		class System < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "system" )

				define_resource(
					name: :exitJD,
					parameter:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :getStorageInfos,
					parameter:
					{
						path:
						{
							type: String
						}
					},
					return_type: [String]
				)
				define_resource(
					name: :getSystemInfos,
					parameter:
					{
					},
					return_type: String
				)
				define_resource(
					name: :hibernateOS,
					parameter:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :restartJD,
					parameter:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :shutdownOS,
					parameter:
					{
						force:
						{
							type: TrueClass
						}
					},
					return_type: nil
				)
				define_resource(
					name: :standbyOS,
					parameter:
					{
					},
					return_type: nil
				)
			end
		end
		class Toolbar < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "toolbar" )

				define_resource(
					name: :addLinksFromDOM,
					parameter:
					{
					},
					return_type: Object
				)
				define_resource(
					name: :checkLinksFromDOM,
					parameter:
					{
					},
					return_type: Object
				)
				define_resource(
					name: :getStatus,
					parameter:
					{
					},
					return_type: Object
				)
				define_resource(
					name: :isAvailable,
					parameter:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :pollCheckedLinksFromDOM,
					parameter:
					{
						checkID:
						{
							type: String
						}
					},
					return_type: LinkCheckResult
				)
				define_resource(
					name: :specialURLHandling,
					parameter:
					{
						url:
						{
							type: String
						}
					},
					return_type: String
				)
				define_resource(
					name: :startDownloads,
					parameter:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :stopDownloads,
					parameter:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :toggleAutomaticReconnect,
					parameter:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :toggleClipboardMonitoring,
					parameter:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :toggleDownloadSpeedLimit,
					parameter:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :togglePauseDownloads,
					parameter:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :togglePremium,
					parameter:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :toggleStopAfterCurrentDownload,
					parameter:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :triggerUpdate,
					parameter:
					{
					},
					return_type: TrueClass
				)
			end
		end
		class Ui < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "ui" )

				define_resource(
					name: :getMenu,
					parameter:
					{
						context:
						{
							type: Context
						}
					},
					return_type: MyJDMenuItem
				)
				define_resource(
					name: :invokeAction,
					parameter:
					{
						context:
						{
							type: Context
						},
						id:
						{
							type: String
						},
						linkIds:
						{
							type: [Integer]
						},
						packageIds:
						{
							type: [Integer]
						}
					},
					return_type: Object
				)
			end
		end
		class Update < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "update" )

				define_resource(
					name: :isUpdateAvailable,
					parameter:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :restartAndUpdate,
					parameter:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :runUpdateCheck,
					parameter:
					{
					},
					return_type: nil
				)
			end
		end
	end
end

