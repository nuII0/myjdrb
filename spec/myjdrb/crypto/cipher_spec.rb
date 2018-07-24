require 'base64'

require 'myjdrb/crypto/iv_key'
require 'myjdrb/crypto/cipher'

RSpec.describe Myjdrb::Crypto::Cipher, :cipher do
  let (:ivkey) { Myjdrb::Crypto::IvKey.new( Digest::SHA256.digest 'foo') }
  let (:plaintext) { "16byteslengthzzz" }
  let (:ciphertext) { "NHRqDedXwwKpSW/nI12Q06Bo31lQCEOirmHVsRjIIk8=\n" }

  subject {described_class.new(ivkey.key, ivkey.iv)}

  describe '#initialize' do
    context 'invalid parameters' do
      it 'raises' do
        expect{described_class.new('foo', 'bar')}.to raise_error(ArgumentError)
      end
    end
  end

  describe '#encrypt' do
    context 'valid input' do
      let (:input) { plaintext }
      let (:output) { ciphertext }

      it 'encrypts' do
        expect(subject.encrypt(input)).to eq output
      end
    end
  end

  describe '#decrypt' do
    context 'valid input' do
      let (:input) { ciphertext }
      let (:output) { plaintext }

      it 'decrypts' do
        expect(subject.decrypt(input)).to eq output
      end
    end
  end
end
