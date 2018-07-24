require 'json'
require 'myjdrb/structs'

RSpec.describe Myjdrb::Structs, :structs do

  let (:test_class) do
    Class.new Myjdrb::Structs::Base do
      def initialize(parameter: "default")
        make_instance_variables method(__method__).parameters, binding
      end
    end
  end

  let (:subject) { test_class.new }

  describe '#initialize' do
    it 'initializes with default value' do
      expect(subject.parameter).to eq("default")
    end

    it 'initializes with custom parameter' do
      parameter = "custom"
      subject = test_class.new(parameter: parameter)
      expect(subject.parameter).to eq(parameter)
    end
  end

  describe '#to_json' do
    it 'returns correct json string' do
      expect(subject.to_json).to eq({parameter: "default"}.to_json)
    end
  end

  describe '#add_to_comma_separated_string' do
    let (:entry) { "foobar" }

    context 'string is null' do
      let (:string) { "null" }
      it 'returns entry' do
        expect(subject.add_to_comma_separated_string(string,entry)).to eq entry
      end
    end

    context 'string is not null' do
      let (:string) { "whatever" }
      it 'returns comma separated string' do
        expect(subject.add_to_comma_separated_string(string,entry)).to eq "#{string},#{entry}"
      end
    end
  end
end

