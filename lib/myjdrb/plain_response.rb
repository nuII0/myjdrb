require 'classy_hash'
module Myjdrb
  class PlainResponse
    attr_reader :data
    def initialize data
      @data = data
    end
  end
end

