module Myjdrb
  module Crypto
    class IvKey
      attr_reader :iv, :key
      def initialize(input)
        raise 'input must be 32 bytes' unless input.length.eql? 32
        @iv = input[0..15]
        @key = input[16..-1]
      end
    end
  end
end
