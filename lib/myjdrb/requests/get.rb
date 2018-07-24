require 'myjdrb/requests/request'

module Myjdrb
  module Requests
    # Representing a HTTP Get Request.
    # Takes query_parameter and a schema for format
    # validation.
    class Get < Request
      def execute!(uri, http_adapter)
        http_adapter.execute(method: :get, url: uri.to_s)
      end

      def signature=(signature)
        @query_parameter[:signature] = signature
      end

      def id=(request_id)
        @query_parameter[:rid] = request_id
      end

      def id
        @query_parameter.fetch(:rid)
      end
    end
  end
end
