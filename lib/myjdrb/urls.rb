require 'uri'

module Myjdrb
  module Urls
    API = URI.parse 'https://api.jdownloader.org'
    CONNECT = URI.parse '/my/connect'
    LISTDEVICES = URI.parse '/my/listdevices'
    CONFIG_LIST = URI.parse '/config/list'
    CONFIG_GET = URI.parse '/config/get'
    CONFIG_SET = URI.parse '/config/set'
  end
end
