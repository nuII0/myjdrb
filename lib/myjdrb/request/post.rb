require 'json'

require 'myjdrb/request/request'

module Myjdrb
  module Requests
    # Represents a HTTP Post Request.
    # Similar to GET but with additional payload
    # in the body.
    # @see Get
    class Post < Request
      attr_reader :post_parameter
      attr_accessor :rid, :api_version, :action, :parameter

      alias :id= :rid=
      alias :id :rid

      def initialize(query_parameter = {}, parameter = [])
        super query_parameter
        @parameter = post_parameter
      end

      def validate(schema)
      end

      #def to_s
        #super + "payload: #{@payload}"
      #end

      #def signature=(signature)
        #@payload[:signature] = signature
      #end

      # Parameter order matters for encryption,
      # so we build the order by hand
      def to_h
        {
          "apiVer": @api_version,
          "url": @action,
          "params": @parameter,
          "rid": @rid
        }
      end

      def to_json
        to_h.to_json
      end
    end
  end
end
