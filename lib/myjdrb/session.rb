require 'myjdrb/endpoints'

require 'myjdrb/crypto/iv_key'
require 'myjdrb/crypto/signer'
require 'myjdrb/util/counter'

require 'myjdrb/executer'
require 'myjdrb/requests/get'

module Myjdrb

  # Establishes and holds session related data
  class Session
    attr_reader :sessiontoken, :regaintoken

    def initialize(user:, appkey:, key:)
      @user = user
      @appkey = appkey
      @key = key

      establish!
    end

    private

    def establish!
      ivkey = Crypto::IvKey.new(@key).freeze
      cipher = Crypto::Cipher.new(ivkey.iv, ivkey.key).freeze
      signer = Crypto::Signer.new(@key).freeze

      executer = Executer.new(signer: signer, cipher: cipher)

      parameter = { email: @user,
                    appkey: @appkey }

      request = Requests::Get.new(parameter)
      endpoint = Endpoints::Connect.new
      response = executer.execute_request(endpoint, request)

      @sessiontoken = response.sessiontoken
      @regaintoken = response.regaintoken
    end
  end
end
