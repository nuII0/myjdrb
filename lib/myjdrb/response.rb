require 'classy_hash'
require 'json'
require 'delegate'

module Myjdrb
  class Response < SimpleDelegator
    def initialize schema, json_data
      @hash = JSON.parse(json_data, symbolize_names: true)
      @ostruct = OpenStruct.new @hash
      @schema = schema
      __setobj__(@ostruct)
      validate
    end

    def id
      self.rid
    end

    private

    def validate(full: true, strict: true, verbose: true)
      ClassyHash.validate(@hash, @schema, full: full, strict: strict, verbose: verbose)
    rescue RuntimeError => e
      raise "Response could not be build from input. Input is: #{@hash}. Error is: #{e.message}. Schema is: #{@schema}"
    end
  end
end

