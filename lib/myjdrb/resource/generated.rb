require 'myjdrb/resource/base'

module Myjdrb
	module Resource
		class Captcha < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "captcha" )

				define_resource(
					name: :getCaptcha,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: String
				)
				define_resource(
					name: :get,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: [CaptchaJob]
				)
				define_resource(
					name: :skip,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :crossdomain,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :favicon,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :flashgot,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :jdcheck,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :jdcheckjson,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :flash,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: [String]
				)
				define_resource(
					name: :listPremiumHosterUrls,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: String
				)
				define_resource(
					name: :premiumHosterIcon,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: [BasicAuthentication]
				)
				define_resource(
					name: :listPremiumHoster,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: [String]
				)
				define_resource(
					name: :listPremiumHosterUrls,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: String
				)
				define_resource(
					name: :refreshAccounts,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
		class Config < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "config" )

				define_resource(
					name: :get,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: [AdvancedConfigAPIEntry]
				)
				define_resource(
					name: :list,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: String
				)
				define_resource(
					name: :getSessionPublicKey,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: String
				)
				define_resource(
					name: :ping,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: String
				)
				define_resource(
					name: :getSpeedInBps,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: Integer
				)
				define_resource(
					name: :pause,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :stop,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: String
				)
				define_resource(
					name: :moveLinks,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: Integer
				)
				define_resource(
					name: :pause,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: Integer
				)
				define_resource(
					name: :start,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :stop,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: Integer
				)
				define_resource(
					name: :getStopMarkedLink,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: DownloadLink
				)
				define_resource(
					name: :getStructureChangeCounter,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: Integer
				)
				define_resource(
					name: :queryLinks,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :renameLink,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: [PublisherResponse]
				)
				define_resource(
					name: :removesubscription,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: [ArchiveStatus]
				)
				define_resource(
					name: :setArchiveSettings,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
		class Jd < Base
			def initialize(device_id:, sessiontoken:, executer:)
				super( device_id, sessiontoken, executer, "jd" )

				define_resource(
					name: :doSomethingCool,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :getCoreRevision,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: Integer
				)
				define_resource(
					name: :refreshPlugins,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :sum,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: Integer
				)
				define_resource(
					name: :version,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: [String]
				)
				define_resource(
					name: :moveLinks,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: Integer
				)
				define_resource(
					name: :queryLinks,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :abort,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :getChildrenChanged,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: [String]
				)
				define_resource(
					name: :getDownloadUrls,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: Integer
				)
				define_resource(
					name: :getVariants,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :moveLinks,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: [LogFolder]
				)
				define_resource(
					name: :sendLogFile,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: String
				)
				define_resource(
					name: :getPluginRegex,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :handshake,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :getStorageInfos,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: String
				)
				define_resource(
					name: :hibernateOS,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :restartJD,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :shutdownOS,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: Object
				)
				define_resource(
					name: :checkLinksFromDOM,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: Object
				)
				define_resource(
					name: :getStatus,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: Object
				)
				define_resource(
					name: :isAvailable,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :pollCheckedLinksFromDOM,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :stopDownloads,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :toggleAutomaticReconnect,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :toggleClipboardMonitoring,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :toggleDownloadSpeedLimit,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :togglePauseDownloads,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :togglePremium,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :toggleStopAfterCurrentDownload,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :triggerUpdate,
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
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
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: TrueClass
				)
				define_resource(
					name: :restartAndUpdate,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: nil
				)
				define_resource(
					name: :runUpdateCheck,
					http_type: :post,
					parameter_schema:
					{
					},
					return_type: nil
				)
			end
		end
	end
end

