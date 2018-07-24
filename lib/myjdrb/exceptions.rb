module Myjdrb
  class Error < StandardError; end
  class ResponseError < Error
    attr_accessor :request, :uri, :error_data
    def initialize(request, uri, error_text, error_data = nil)
      @request = request
      @uri = uri
      @error_data = error_data

      msg = "#{error_text}"

      msg << " : #{error_data.to_s}" unless error_data.nil?

      super msg
    end
  end
end

