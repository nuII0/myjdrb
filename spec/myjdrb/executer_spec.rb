require 'json'

require 'myjdrb/executer'
require 'myjdrb/crypto/signer'
require 'myjdrb/requests/get'
require 'myjdrb/requests/post'
require 'myjdrb/endpoints'


RSpec.describe Myjdrb::Executer, :executer do

  class CipherMock
    def initialize *; end
    def decrypt input; input; end
    def encrypt input; input; end
  end

  let (:uri) { 'http://example.com' }
  let (:signer) { Myjdrb::Crypto::Signer.new('foo') }

  subject { described_class.new(cipher: CipherMock.new,
                                http_adapter: http_adapter,
                                signer: signer)
  }

  context 'GET requests' do
    describe '#execute_request' do
      context 'valid parameter' do
        let (:rid) { 0 }
        let (:uri) { "http://foo.local?rid=#{rid}" }
        let (:response_data) { { foo: "bar", rid: rid }.to_json }
        let (:response_schema) { {foo: String, rid: Integer} }
        let (:endpoint) { Myjdrb::Endpoints.Endpoint(uri, response_schema).new }
        let (:http_adapter) { mock_get(uri, response_data) }
        let (:request) { Myjdrb::Requests::Get.new }

        it 'executes request' do
          response = subject.execute_request(endpoint, request)

          expect(response.to_h.to_json).to eq response_data
        end

        context 'parameterized request' do
          let (:uri) { "http://foo.local/bar?param=value&rid=#{rid}" }
          it 'uses correct uri' do
            request = Myjdrb::Requests::Get.new({param: "value"})

            response = subject.execute_request(endpoint, request)
            expect(response.to_h.to_json).to eq response_data
          end
        end

        context 'request response id mismatch' do
          let (:response_data) { { foo: "bar", rid: 1337 }.to_json }
          it 'raises' do
            expect{subject.execute_request(endpoint, request)}.to raise_error(Myjdrb::Error)
          end
        end
      end
    end
  end
end

