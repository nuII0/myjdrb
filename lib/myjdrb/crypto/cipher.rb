require 'base64'
require 'openssl'

module Myjdrb
  module Crypto
    class Cipher
      def initialize(iv, key)
        raise ArgumentError, "Key bytesize must be 16 bytes" unless key.bytesize.eql? 16
        raise ArgumentError, "Iv bytesize must be 16 bytes" unless iv.bytesize.eql? 16
        @iv = iv
        @key = key
      end

      # @param input [String] data
      # @note data will be padded if needed
      def encrypt input
        chiffre = perform input, :encrypt
        Base64.encode64 chiffre
      end

      # @param input [String] data
      def decrypt input
        perform Base64.decode64(input), :decrypt
      end

      private

      #BS = 16
      #def pkcs7Pad(s)
        #return s + ((BS - s.length % BS).chr * (BS - s.length % BS))
      #end

      def perform(input, method)
        aes = OpenSSL::Cipher.new('AES-128-CBC')
        aes.public_send(method)
        aes.iv = @iv
        aes.key = @key
        aes.padding = 16 #PKCS7 padding
        aes.update(input) + aes.final
      end
    end
  end
end
