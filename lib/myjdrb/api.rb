require 'myjdrb/crypto/cipher'
require 'myjdrb/crypto/iv_key'
require 'myjdrb/crypto/keystore'

require 'myjdrb/session'
require 'myjdrb/request/post'
require 'myjdrb/device'
require 'myjdrb/util/counter'

require 'myjdrb/endpoints'

module Myjdrb
  # Starting class for API usage. Establishes sessions and
  # provides Objects for further usage.
  class Api
    APPKEY  = 'myjdrb'

    # Create a new session
    # @param user [String]
    # @param password [String]
    # @param appkey [String] can be set to anything
    # @param appkey [Session] provide an existing session if wanted
    def initialize(user:, password:, appkey: APPKEY, session: nil)
      @keystore = Crypto::KeyStore.new(user: user, password: password).freeze

      session ||= Session.new(user: user, appkey: appkey, key: @keystore.loginsecret).freeze
      @session = session

      server_encryption_token = @keystore.compute_server_encryption_token(session.sessiontoken)
      device_encryption_token = @keystore.computer_device_encryption_token(session.sessiontoken)

      ivkey = Crypto::IvKey.new(server_encryption_token).freeze
      ivkey_device = Crypto::IvKey.new(device_encryption_token).freeze

      cipher = Crypto::Cipher.new(ivkey.iv, ivkey.key).freeze
      cipher_device = Crypto::Cipher.new(ivkey_device.iv, ivkey_device.key).freeze
      signer = Crypto::Signer.new(server_encryption_token).freeze

      @executer = Executer.new(signer: signer, cipher: cipher, cipher_device: cipher_device)
    end

    # @return [Array] available JDownloader instances
    def devices
      endpoint = Endpoints::ListDevices.new
      request = Requests::Get.new(sessiontoken: @session.sessiontoken)

      response = @executer.execute_request(endpoint, request)

      response.list.map do |d|
        Device.new(**d, executer: @executer, sessiontoken: @session.sessiontoken)
      end
    end
  end
end
