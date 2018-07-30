require 'myjdrb/mixin/typed_method'

RSpec.describe Myjdrb::Mixin::TypedMethod, :typed_method do

  let (:testclass) do
    Class.new do
      extend Myjdrb::Mixin::TypedMethod
    end
  end

  let (:subject) { testclass.new }

  describe '.define_resource' do
    let (:method_name) { :foo }

    context 'no parameter' do

      it 'creates the method' do
        testclass.define_typed_method(name: method_name)
        expect(subject.respond_to?(method_name)).to eq(true)
      end

      it 'yields empty hash' do
        testclass.define_typed_method(name: method_name)
        expect { |b| subject.public_send(method_name, &b) }.to yield_with_args({})
      end

      it 'does not allow any parameters' do
        testclass.define_typed_method(name: method_name)
        expect { |b| subject.public_send(method_name,too_much: "meh", &b) }.to raise_error(ArgumentError)
      end
    end

    context 'optional parameter' do
      let (:parameter) { {foo: { type: String, default: "bar" } } }

      it 'creates the method' do
        testclass.define_typed_method(name: method_name, typed_parameter: parameter)
        expect(subject.respond_to?(method_name)).to eq(true)
      end

      it 'yields optional parameter' do
        testclass.define_typed_method(name: method_name, typed_parameter: parameter)
        expect { |b| subject.public_send(method_name, &b) }.to yield_with_args({foo: "bar"})
      end

      it 'allows custom parameter of valid type' do
        testclass.define_typed_method(name: method_name, typed_parameter: parameter)
        expect { |b| subject.public_send(method_name,foo: "baz", &b) }.to yield_with_args({foo: "baz"})
      end

      it 'does not allow other types' do
        testclass.define_typed_method(name: method_name, typed_parameter: parameter)
        expect { |b| subject.public_send(method_name,foo: %r{not_a_string}, &b) }.to raise_error(ArgumentError)
      end
    end

    context 'mandatory parameter' do
      let (:parameter) { {foo: { type: String } } }

      it 'creates the method' do
        testclass.define_typed_method(name: method_name, typed_parameter: parameter)
        expect(subject.respond_to?(method_name)).to eq(true)
      end

      it 'allows parameter of valid type' do
        testclass.define_typed_method(name: method_name, typed_parameter: parameter)
        expect { |b| subject.public_send(method_name,foo: "baz", &b) }.to yield_with_args({foo: "baz"})
      end

      it 'does not allow other types' do
        testclass.define_typed_method(name: method_name, typed_parameter: parameter)
        expect { |b| subject.public_send(method_name,foo: %r{not_a_string}, &b) }.to raise_error(ArgumentError)
      end
    end

    context 'multiple parametes' do
      let (:parameter) do
        { foo: { type: String },
          bar: { type: Numeric, default: 1337 },
          baz: { type: ->(v) { v.is_a? Regexp }, default: %r{.*} }
        }
      end

      it 'creates the method' do
        testclass.define_typed_method(name: method_name, typed_parameter: parameter)
        expect(subject.respond_to?(method_name)).to eq(true)
      end

      it 'allows parameter of valid type' do
        testclass.define_typed_method(name: method_name, typed_parameter: parameter)
        expect { |b| subject.public_send(method_name,foo: "baz", &b) }.to yield_with_args({foo: "baz",
                                                                                           bar: 1337,
                                                                                           baz: %r{.*}})
      end

      it 'does not allow other types' do
        testclass.define_typed_method(name: method_name, typed_parameter: parameter)
        expect { |b| subject.public_send(method_name,foo: %r{not_a_string}, &b) }.to raise_error(ArgumentError)
        expect { |b| subject.public_send(method_name,foo: "a string", baz: "not_a_regexp", &b) }.to raise_error(ArgumentError)
      end

      it 'preservs parameter order' do
        testclass.define_typed_method(name: method_name, typed_parameter: parameter)
        b = Proc.new { |h| expect(h.values).to eq(["baz", 1337, %r{.*}]) }
        subject.public_send(method_name,foo: "baz", &b)
      end
    end
  end
end
