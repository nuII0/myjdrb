require 'uri'

require 'myjdrb/schema/request'
require 'myjdrb/schema/response'
require 'myjdrb/urls'

module Myjdrb
  module Endpoints
    def self.Endpoint(uri, response_schema, request_schema = {})
      Class.new(Object) do
        define_method :action do
          (URI.parse uri)
        end
        define_method :uri do
          ::Myjdrb::Urls::API + (URI.parse uri)
        end
        define_method :response_schema do
          response_schema
        end
        define_method :request_schema do
          request_schema
        end
      end
    end

    def self.PostEndpoint(uri, response_schema, request_schema = {})
      Class.new(Object) do
        define_method :initialize do |sessiontoken:, device_id: |
          instance_variable_set(:@sessiontoken, sessiontoken)
          instance_variable_set(:@device_id, device_id)

        end
        define_method :action do
          (URI.parse uri)
        end
        define_method :uri do
          Myjdrb::Urls::API + "t_#{@sessiontoken}_#{@device_id}#{(URI.parse uri)}"
        end
        define_method :response_schema do
          response_schema
        end

        define_method :request_schema do
          request_schema
        end
      end
    end

    class Connect < Endpoint('/my/connect', Schema::Response::CONNECT, Schema::Request::CONNECT); end
    class ListDevices < Endpoint('/my/listdevices', Schema::Response::LISTDEVICES, Schema::Request::LISTDEVICES); end

  end
end
