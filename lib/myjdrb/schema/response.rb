module Myjdrb
  module Schema
    module Response
      GENERIC = {
        rid: Integer,
        data: [Object]
      }

      CONNECT = {
        sessiontoken: String,
        regaintoken: String,
        rid: Integer
      }.freeze

      LISTDEVICES = {
        rid: Integer,
        list: [
          [{
            id: String,
            type: String,
            name: String,
            status: String
          }]
        ]
      }.freeze
    end
  end
end
