require 'classy_hash'
require 'uri'

module Myjdrb
  module Requests
    class Request
      def initialize(query_parameter = {})
        @query_parameter = query_parameter
      end

      def query
        URI.encode_www_form(@query_parameter)
      end

      def validate(schema)
        ClassyHash.validate(@query_parameter, schema, full: true, strict: true, verbose: true)
      end

      def to_s
        "#{self.class.name} query: #{@query_parameter}"
      end
    end
  end
end
