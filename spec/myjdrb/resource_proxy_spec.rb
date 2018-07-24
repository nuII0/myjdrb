require 'myjdrb/resource_proxy'

RSpec.describe Myjdrb::ResourceProxy, :resource_proxy do

	#let (:subject) { describe_class.new }

	describe '.define_resource' do
		it 'creates the method' do
			described_class.define_resource(:test_method)
			subject = described_class.new(nil,nil,nil)
			expect(subject.respond_to? :test_method).to eq(true)
		end
	end
end
