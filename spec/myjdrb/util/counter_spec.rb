require 'myjdrb/util/counter'

RSpec.describe Myjdrb::Util::Counter do
  subject {described_class.new(0)}

  describe '#produce' do
    it 'produces expected output' do
      expect(subject.produce).to eql(0)
      expect(subject.produce).to eql(1)
    end
  end
end
