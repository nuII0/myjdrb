$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'myjdrb/api'
require 'myjdrb/version'
require 'myjdrb/struct/generated'

#Dir.glob(File.join(File.dirname(__FILE__), 'myjdrb/structs/*')).each do |file|
  #require file
#end

module Myjdrb
end
