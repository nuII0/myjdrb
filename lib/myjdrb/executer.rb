require 'rest-client'

require 'myjdrb/response'
require 'myjdrb/exceptions'

module Myjdrb
  class Executer
    def initialize(signer:, cipher:, http_adapter: RestClient::Request, request_counter: Util::Counter.new, cipher_device: nil)
      @signer = signer
      @cipher = cipher
      @cipher_device = cipher_device
      @request_counter = request_counter
      @http_adapter = http_adapter
    end

    def execute_request(endpoint, request)
      request.id = @request_counter.produce

      if endpoint.request_schema.key?(:signature)
        signature_data = full_uri(endpoint.uri, request).request_uri
        request.signature = @signer.signature(signature_data)
      end

      final_uri = full_uri(endpoint.uri, request)

      decrypted_response = case request
                           when Requests::Post
                             execute_post(final_uri, request, endpoint)
                           when Requests::Get
                             execute_get(final_uri, request)
                           else
                             raise "Unknown Request received: #{request.class.to_s}"
                           end

      response = Response.new(endpoint.response_schema, decrypted_response)

      verify_request_id(request.id, response.id)

      response
    rescue RestClient::ExceptionWithResponse => err
      error_data = try_decrypt_text(err.response.to_s)
      error_data = try_parse_json(error_data)
      raise Myjdrb::ResponseError.new(request, endpoint.uri, err.message, error_data)

    rescue RestClient::RequestFailed => err
      raise Myjdrb::ResponseError.new(request, endpoint.uri, err.message)
    end

    private

    def execute_get(final_uri, request)
      encrypted_response = request.execute!(final_uri, @http_adapter)

      @cipher.decrypt(encrypted_response.body)
    end

    def execute_post(final_uri, request, endpoint)
      request.action = endpoint.action.to_s
      request.api_version = 1

      encrypted_data = @cipher_device.encrypt(request.to_json)

      encrypted_response = send_post_request(endpoint.uri, encrypted_data)

      @cipher_device.decrypt(encrypted_response.body)
    end

    def try_decrypt_text(input)
      data = ""
      # is it encrypted?
      data = @cipher_device.decrypt input
      data
    rescue OpenSSL::Cipher::CipherError
      # nope, just return it
      data = input
    end

    def try_parse_json(input)
      data = ""
      # is it json?
      data = JSON.parse(input)
      data
    rescue JSON::ParserError
      # nope, just return it
      data = input
    end


    def full_uri(uri, request)
      return uri if request.query.empty?

      tmp = uri
      tmp.query = request.query
      tmp
    end

    #def decrypt_response(encrypted_data, response_schema)
    #response_json = @cipher.decrypt(encrypted_data)
    #end

    def response_from_schema(response, response_schema)
      Response.new
    end

    def verify_request_id(request_id, response_id)
      unless request_id.eql? response_id
        raise Error, "Request Id: #{request_id} doest not match to Response Id: #{response_id}"
      end
    end

    def send_post_request(uri, data)
      headers = {
        "Content-Type": "application/aesjson-jd; charset=utf-8"
      }
      @http_adapter.execute(method: :post,
                            url: uri.to_s,
                            payload: data,
                            headers: headers)
    end
  end
end
