require 'openssl'

module Myjdrb
  module Crypto

    # Generates HMAC for inputdata
    class Signer
      attr_accessor :key
      def initialize(key)
        @key = key
      end

      def signature(input)
        OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha256'), @key, input.to_s)
      end
    end
  end
end
