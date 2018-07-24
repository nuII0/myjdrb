module Myjdrb
  module Schema

    # Describes formats of API requests.
    module Request
    CONNECT = {
      email: String,
      appkey: String,
      rid: Integer,
      signature: String
    }.freeze

    LISTDEVICES = {
      sessiontoken: String,
      rid: Integer,
      signature: String
    }.freeze
    end
  end
end
