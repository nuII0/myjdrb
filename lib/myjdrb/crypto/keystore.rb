module Myjdrb
  module Crypto

    # Calculates required secrets for API usage
    class KeyStore
      attr_reader :loginsecret, :devicesecret

      SERVER_STR = 'server'
      DEVICE_STR = 'device'

      def initialize(user:, password:)
        @loginsecret = create_loginsecret(user: user, password: password)
        @devicesecret = create_devicesecret(user: user, password: password)
      end

      def compute_server_encryption_token(sessiontoken)
        Digest::SHA256.digest(@loginsecret + [sessiontoken].pack("H*"))
      end

      def computer_device_encryption_token(sessiontoken)
        Digest::SHA256.digest(@devicesecret + [sessiontoken].pack("H*"))
      end

      private

      def create_loginsecret(user:, password:)
        create_secret(user, password, SERVER_STR)
      end

      def create_devicesecret(user:, password:)
        create_secret(user, password, DEVICE_STR)
      end

      def create_secret(user, password, tail)
        Digest::SHA256.digest "#{user.downcase}#{password}#{tail.downcase}"
      end
    end
  end
end
