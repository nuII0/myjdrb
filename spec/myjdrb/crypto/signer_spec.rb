require 'myjdrb/crypto/signer'

RSpec.describe Myjdrb::Crypto::Signer, :signer do
  let (:key) { "foobar" }

  subject {described_class.new(key)}

  describe '#signature' do
      let (:input) { "baz" }
      let (:output) { "1749fc63a563327d9df24bbbc26c577464653084660465d90f1f7519f1e87f1b" }
    it 'returns correct signature' do
        expect(subject.signature(input)).to eq output
    end
  end
end
