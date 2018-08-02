require 'myjdrb/resource_proxy'
require 'myjdrb/struct/generated'
module Myjdrb
  module Resource
    class Accounts < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "accounts")

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
                        return: TrueClass
        )
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
                        return: TrueClass
        )
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
                        return: TrueClass
        )
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
                        return: TrueClass
        )
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
                        return: TrueClass
        )
        define_resource(
                        name: :disableAccounts,
                        parameter:
                        {
                          ids:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :disableAccounts,
                        parameter:
                        {
                          ids:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :disableAccounts,
                        parameter:
                        {
                          ids:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :enableAccounts,
                        parameter:
                        {
                          ids:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :enableAccounts,
                        parameter:
                        {
                          ids:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :enableAccounts,
                        parameter:
                        {
                          ids:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
        )
        define_resource(
                        name: :queryAccounts,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [Account]
        )
        define_resource(
                        name: :queryAccounts,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [Account]
        )
        define_resource(
                        name: :queryAccounts,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [Account]
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
        )
      end
    end
    class Accountsv2 < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "accountsV2")

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
                        return: String
        )
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
                        return: String
        )
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
                        return: String
        )
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
                        return: String
        )
        define_resource(
                        name: :addBasicAuth,
                        parameter:
                        {
                          type:
                          {
                            type: String
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
                        return: Integer
        )
        define_resource(
                        name: :addBasicAuth,
                        parameter:
                        {
                          type:
                          {
                            type: String
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
                        return: Integer
        )
        define_resource(
                        name: :addBasicAuth,
                        parameter:
                        {
                          type:
                          {
                            type: String
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
                        return: Integer
        )
        define_resource(
                        name: :addBasicAuth,
                        parameter:
                        {
                          type:
                          {
                            type: String
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
                        return: Integer
        )
        define_resource(
                        name: :addBasicAuth,
                        parameter:
                        {
                          type:
                          {
                            type: String
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
                        return: Integer
        )
        define_resource(
                        name: :addBasicAuth,
                        parameter:
                        {
                          type:
                          {
                            type: String
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
                        return: Integer
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
        )
        define_resource(
                        name: :listAccounts,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [Account]
        )
        define_resource(
                        name: :listAccounts,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [Account]
        )
        define_resource(
                        name: :listAccounts,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [Account]
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
        )
        define_resource(
                        name: :updateBasicAuth,
                        parameter:
                        {
                          updatedEntry:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :updateBasicAuth,
                        parameter:
                        {
                          updatedEntry:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :updateBasicAuth,
                        parameter:
                        {
                          updatedEntry:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
      end
    end
    class Captcha < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "captcha")

        define_resource(
                        name: :get,
                        parameter:
                        {
                          id:
                          {
                            type: Integer
                          }
                        },
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
        )
      end
    end
    class Config < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "config")

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
                        return: String
        )
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
                        return: String
        )
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
                        return: String
        )
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
                        return: String
        )
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
                        return: String
        )
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: [AdvancedConfigAPIEntry]
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
                        return: [AdvancedConfigAPIEntry]
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
                        return: [AdvancedConfigAPIEntry]
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
                        return: [AdvancedConfigAPIEntry]
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
                        return: [AdvancedConfigAPIEntry]
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
                        return: [AdvancedConfigAPIEntry]
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
                        return: [AdvancedConfigAPIEntry]
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
                        return: [AdvancedConfigAPIEntry]
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
                        return: [AdvancedConfigAPIEntry]
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
                        return: [AdvancedConfigAPIEntry]
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
                        return: [AdvancedConfigAPIEntry]
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
                        return: [AdvancedConfigAPIEntry]
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
                        return: [AdvancedConfigAPIEntry]
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
                        return: [AdvancedConfigAPIEntry]
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
                        return: [AdvancedConfigAPIEntry]
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
                        return: [EnumOption]
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
                        return: [EnumOption]
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
                        return: [EnumOption]
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
                        return: [EnumOption]
        )
        define_resource(
                        name: :query,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [AdvancedConfigAPIEntry]
        )
        define_resource(
                        name: :query,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [AdvancedConfigAPIEntry]
        )
        define_resource(
                        name: :query,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [AdvancedConfigAPIEntry]
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
        )
      end
    end
    class Content < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "content")

        define_resource(
                        name: :favicon,
                        parameter:
                        {
                          hostername:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :favicon,
                        parameter:
                        {
                          hostername:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :favicon,
                        parameter:
                        {
                          hostername:
                          {
                            type: String
                          }
                        },
                        return: String
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
                        return: String
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
                        return: String
        )
      end
    end
    class Contentv2 < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "contentV2")

        define_resource(
                        name: :getFavIcon,
                        parameter:
                        {
                          hostername:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :getFavIcon,
                        parameter:
                        {
                          hostername:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :getFavIcon,
                        parameter:
                        {
                          hostername:
                          {
                            type: String
                          }
                        },
                        return: String
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
                        return: String
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
                        return: String
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
                            type: String
                          }
                        },
                        return: String
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
                            type: String
                          }
                        },
                        return: String
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
                            type: String
                          }
                        },
                        return: String
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
                            type: String
                          }
                        },
                        return: String
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
                            type: String
                          }
                        },
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
        )
      end
    end
    class Dialogs < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "dialogs")

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
                            type: Object
                          }
                        },
                        return: String
        )
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
                            type: Object
                          }
                        },
                        return: String
        )
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
                            type: Object
                          }
                        },
                        return: String
        )
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
                            type: Object
                          }
                        },
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
        )
      end
    end
    class Downloadcontroller < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "downloadcontroller")

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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
        )
      end
    end
    class Downloadevents < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "downloadevents")

        define_resource(
                        name: :queryLinks,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          },
                          diffID:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :queryLinks,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          },
                          diffID:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :queryLinks,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          },
                          diffID:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :queryLinks,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          },
                          diffID:
                          {
                            type: String
                          }
                        },
                        return: String
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
        )
      end
    end
    class Downloads < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "downloads")

        define_resource(
                        name: :disableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :disableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :disableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :disableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :disableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :disableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :disableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :enableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :enableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :enableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :enableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :enableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :enableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :enableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :forceDownload,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :forceDownload,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :forceDownload,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :forceDownload,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :forceDownload,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :forceDownload,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :forceDownload,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
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
                        return: Integer
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
                        return: Integer
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
                        return: Integer
        )
        define_resource(
                        name: :moveLinks,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :moveLinks,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :moveLinks,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :movePackages,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :movePackages,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :movePackages,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :pause,
                        parameter:
                        {
                          value:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :pause,
                        parameter:
                        {
                          value:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :pause,
                        parameter:
                        {
                          value:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :queryLinks,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [DownloadLink]
        )
        define_resource(
                        name: :queryLinks,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [DownloadLink]
        )
        define_resource(
                        name: :queryLinks,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [DownloadLink]
        )
        define_resource(
                        name: :queryPackages,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [FilePackage]
        )
        define_resource(
                        name: :queryPackages,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [FilePackage]
        )
        define_resource(
                        name: :queryPackages,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [FilePackage]
        )
        define_resource(
                        name: :removeLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :removeLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :removeLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :removeLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :removeLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :removeLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :removeLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
        )
        define_resource(
                        name: :resetLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :resetLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :resetLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :resetLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :resetLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :resetLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :resetLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
      end
    end
    class Downloadsv2 < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "downloadsV2")

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
                            type: String
                          },
                          mode:
                          {
                            type: String
                          },
                          selectionType:
                          {
                            type: String
                          }
                        },
                        return: String
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
                            type: String
                          },
                          mode:
                          {
                            type: String
                          },
                          selectionType:
                          {
                            type: String
                          }
                        },
                        return: String
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
                            type: String
                          },
                          mode:
                          {
                            type: String
                          },
                          selectionType:
                          {
                            type: String
                          }
                        },
                        return: String
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
                            type: String
                          },
                          mode:
                          {
                            type: String
                          },
                          selectionType:
                          {
                            type: String
                          }
                        },
                        return: String
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
                            type: String
                          },
                          mode:
                          {
                            type: String
                          },
                          selectionType:
                          {
                            type: String
                          }
                        },
                        return: String
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
                            type: String
                          },
                          mode:
                          {
                            type: String
                          },
                          selectionType:
                          {
                            type: String
                          }
                        },
                        return: String
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: Object
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
                        return: Object
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
                        return: Object
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
                        return: Object
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
                        return: Object
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
                        return: Integer
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
                        return: Integer
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
                        return: Integer
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
        )
        define_resource(
                        name: :queryLinks,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [DownloadLink]
        )
        define_resource(
                        name: :queryLinks,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [DownloadLink]
        )
        define_resource(
                        name: :queryLinks,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [DownloadLink]
        )
        define_resource(
                        name: :queryPackages,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [FilePackage]
        )
        define_resource(
                        name: :queryPackages,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [FilePackage]
        )
        define_resource(
                        name: :queryPackages,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [FilePackage]
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
        )
        define_resource(
                        name: :setPriority,
                        parameter:
                        {
                          priority:
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
                        return: String
        )
        define_resource(
                        name: :setPriority,
                        parameter:
                        {
                          priority:
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
                        return: String
        )
        define_resource(
                        name: :setPriority,
                        parameter:
                        {
                          priority:
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
                        return: String
        )
        define_resource(
                        name: :setPriority,
                        parameter:
                        {
                          priority:
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
        )
      end
    end
    class Events < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "events")

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
                        return: String
        )
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
                        return: String
        )
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
                        return: String
        )
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
                        return: String
        )
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
        )
      end
    end
    class Extensions < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "extensions")

        define_resource(
                        name: :install,
                        parameter:
                        {
                          id:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :install,
                        parameter:
                        {
                          id:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :install,
                        parameter:
                        {
                          id:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
        )
        define_resource(
                        name: :list,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [Extension]
        )
        define_resource(
                        name: :list,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [Extension]
        )
        define_resource(
                        name: :list,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [Extension]
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
        )
      end
    end
    class Extraction < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "extraction")

        define_resource(
                        name: :addArchivePassword,
                        parameter:
                        {
                          password:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :addArchivePassword,
                        parameter:
                        {
                          password:
                          {
                            type: String
                          }
                        },
                        return: String
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: [ArchiveStatus]
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
                        return: [ArchiveStatus]
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
                        return: [ArchiveStatus]
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
                        return: [ArchiveStatus]
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
                        return: [ArchiveSettings]
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
                        return: [ArchiveSettings]
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
                        return: [ArchiveSettings]
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                        return: Object
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
                        return: Object
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
                        return: Object
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
                        return: Object
        )
      end
    end
    class Jd < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "jd")

        define_resource(
                        name: :sum,
                        parameter:
                        {
                          a:
                          {
                            type: String
                          },
                          b:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :sum,
                        parameter:
                        {
                          a:
                          {
                            type: String
                          },
                          b:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :sum,
                        parameter:
                        {
                          a:
                          {
                            type: String
                          },
                          b:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :sum,
                        parameter:
                        {
                          a:
                          {
                            type: String
                          },
                          b:
                          {
                            type: String
                          }
                        },
                        return: String
        )
      end
    end
    class Linkcollector < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "linkcollector")

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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
        )
        define_resource(
                        name: :disableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :disableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :disableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :disableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :disableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :disableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :disableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :enableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :enableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :enableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :enableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :enableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :enableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :enableLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
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
                        return: Integer
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
                        return: Integer
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
                        return: Integer
        )
        define_resource(
                        name: :moveLinks,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :moveLinks,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :moveLinks,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :movePackages,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :movePackages,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :movePackages,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: TrueClass
        )
        define_resource(
                        name: :queryLinks,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [CrawledLink]
        )
        define_resource(
                        name: :queryLinks,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [CrawledLink]
        )
        define_resource(
                        name: :queryLinks,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [CrawledLink]
        )
        define_resource(
                        name: :queryPackages,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [CrawledPackage]
        )
        define_resource(
                        name: :queryPackages,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [CrawledPackage]
        )
        define_resource(
                        name: :queryPackages,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [CrawledPackage]
        )
        define_resource(
                        name: :removeLinks,
                        parameter:
                        {
                          packageIds:
                          {
                            type: String
                          },
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :removeLinks,
                        parameter:
                        {
                          packageIds:
                          {
                            type: String
                          },
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :removeLinks,
                        parameter:
                        {
                          packageIds:
                          {
                            type: String
                          },
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :removeLinks,
                        parameter:
                        {
                          packageIds:
                          {
                            type: String
                          },
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :removeLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :removeLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :removeLinks,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: String
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
        )
        define_resource(
                        name: :startDownloads,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :startDownloads,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :startDownloads,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :startDownloads,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :startDownloads,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :startDownloads,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :startDownloads,
                        parameter:
                        {
                          linkIds:
                          {
                            type: String
                          },
                          packageIds:
                          {
                            type: String
                          }
                        },
                        return: String
        )
      end
    end
    class Linkgrabberv2 < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "linkgrabberv2")

        define_resource(
                        name: :abort,
                        parameter:
                        {
                          jobId:
                          {
                            type: Integer
                          }
                        },
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
        )
        define_resource(
                        name: :addLinks,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :addLinks,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :addLinks,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                            type: String
                          },
                          mode:
                          {
                            type: String
                          },
                          selectionType:
                          {
                            type: String
                          }
                        },
                        return: String
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
                            type: String
                          },
                          mode:
                          {
                            type: String
                          },
                          selectionType:
                          {
                            type: String
                          }
                        },
                        return: String
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
                            type: String
                          },
                          mode:
                          {
                            type: String
                          },
                          selectionType:
                          {
                            type: String
                          }
                        },
                        return: String
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
                            type: String
                          },
                          mode:
                          {
                            type: String
                          },
                          selectionType:
                          {
                            type: String
                          }
                        },
                        return: String
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
                            type: String
                          },
                          mode:
                          {
                            type: String
                          },
                          selectionType:
                          {
                            type: String
                          }
                        },
                        return: String
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
                            type: String
                          },
                          mode:
                          {
                            type: String
                          },
                          selectionType:
                          {
                            type: String
                          }
                        },
                        return: String
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
                        return: Integer
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
                        return: Integer
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
                        return: Integer
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
                        return: Object
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
                        return: Object
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
                        return: Object
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
                        return: Object
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
                        return: Object
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
                        return: [LinkVariant]
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
                        return: [LinkVariant]
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
                        return: [LinkVariant]
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
        )
        define_resource(
                        name: :queryLinkCrawlerJobs,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [JobLinkCrawler]
        )
        define_resource(
                        name: :queryLinkCrawlerJobs,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [JobLinkCrawler]
        )
        define_resource(
                        name: :queryLinkCrawlerJobs,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [JobLinkCrawler]
        )
        define_resource(
                        name: :queryLinks,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [CrawledLink]
        )
        define_resource(
                        name: :queryLinks,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [CrawledLink]
        )
        define_resource(
                        name: :queryLinks,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [CrawledLink]
        )
        define_resource(
                        name: :queryPackages,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [CrawledPackage]
        )
        define_resource(
                        name: :queryPackages,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [CrawledPackage]
        )
        define_resource(
                        name: :queryPackages,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [CrawledPackage]
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
        )
        define_resource(
                        name: :setPriority,
                        parameter:
                        {
                          priority:
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
                        return: String
        )
        define_resource(
                        name: :setPriority,
                        parameter:
                        {
                          priority:
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
                        return: String
        )
        define_resource(
                        name: :setPriority,
                        parameter:
                        {
                          priority:
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
                        return: String
        )
        define_resource(
                        name: :setPriority,
                        parameter:
                        {
                          priority:
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
        )
      end
    end
    class Log < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "log")

        define_resource(
                        name: :sendLogFile,
                        parameter:
                        {
                          logFolders:
                          {
                            type: [String]
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :sendLogFile,
                        parameter:
                        {
                          logFolders:
                          {
                            type: [String]
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :sendLogFile,
                        parameter:
                        {
                          logFolders:
                          {
                            type: [String]
                          }
                        },
                        return: String
        )
      end
    end
    class Plugins < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "plugins")

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
                        return: String
        )
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
                        return: String
        )
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
                        return: String
        )
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
                        return: String
        )
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
                        return: String
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
                        return: [String]
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
                        return: [String]
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
                        return: [String]
        )
        define_resource(
                        name: :list,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [Plugin]
        )
        define_resource(
                        name: :list,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [Plugin]
        )
        define_resource(
                        name: :list,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [Plugin]
        )
        define_resource(
                        name: :query,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [PluginConfigEntry]
        )
        define_resource(
                        name: :query,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [PluginConfigEntry]
        )
        define_resource(
                        name: :query,
                        parameter:
                        {
                          query:
                          {
                            type: String
                          }
                        },
                        return: [PluginConfigEntry]
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
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
                            type: String
                          }
                        },
                        return: TrueClass
        )
      end
    end
    class Polling < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "polling")

        define_resource(
                        name: :poll,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [PollingResult]
        )
        define_resource(
                        name: :poll,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [PollingResult]
        )
        define_resource(
                        name: :poll,
                        parameter:
                        {
                          queryParams:
                          {
                            type: String
                          }
                        },
                        return: [PollingResult]
        )
      end
    end
    class Session < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "session")

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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
        )
      end
    end
    class System < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "system")

        define_resource(
                        name: :getStorageInfos,
                        parameter:
                        {
                          path:
                          {
                            type: String
                          }
                        },
                        return: [StorageInformation]
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
                        return: [StorageInformation]
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
                        return: [StorageInformation]
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
                        return: String
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
                        return: String
        )
      end
    end
    class Toolbar < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "toolbar")

        define_resource(
                        name: :pollCheckedLinksFromDOM,
                        parameter:
                        {
                          checkID:
                          {
                            type: String
                          }
                        },
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
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
                        return: String
        )
      end
    end
    class Ui < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "ui")

        define_resource(
                        name: :getMenu,
                        parameter:
                        {
                          context:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :getMenu,
                        parameter:
                        {
                          context:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :getMenu,
                        parameter:
                        {
                          context:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :getMenu,
                        parameter:
                        {
                          context:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :getMenu,
                        parameter:
                        {
                          context:
                          {
                            type: String
                          }
                        },
                        return: String
        )
        define_resource(
                        name: :invokeAction,
                        parameter:
                        {
                          context:
                          {
                            type: String
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
                        return: String
        )
        define_resource(
                        name: :invokeAction,
                        parameter:
                        {
                          context:
                          {
                            type: String
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
                        return: String
        )
        define_resource(
                        name: :invokeAction,
                        parameter:
                        {
                          context:
                          {
                            type: String
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
                        return: String
        )
        define_resource(
                        name: :invokeAction,
                        parameter:
                        {
                          context:
                          {
                            type: String
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
                        return: String
        )
        define_resource(
                        name: :invokeAction,
                        parameter:
                        {
                          context:
                          {
                            type: String
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
                        return: String
        )
        define_resource(
                        name: :invokeAction,
                        parameter:
                        {
                          context:
                          {
                            type: String
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
                        return: String
        )
        define_resource(
                        name: :invokeAction,
                        parameter:
                        {
                          context:
                          {
                            type: String
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
                        return: String
        )
        define_resource(
                        name: :invokeAction,
                        parameter:
                        {
                          context:
                          {
                            type: String
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
                        return: String
        )
      end
    end
  end
end
