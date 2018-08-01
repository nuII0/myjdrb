require 'myjdrb/mixin/initializable'
require 'myjdrb/mixin/member_equality'

module Myjdrb
  module Structs
    class Base
      include Myjdrb::Mixin::Initializable
      include Myjdrb::Mixin::MemberEquality

      def to_json
        to_h.to_json
      end

      def add_to_comma_separated_string string, entries
        tmp = string

        Array(entries).each do |entry|
          if string.eql? "null"
            tmp = entry
          else
            tmp += ",#{entry}"
          end

          return tmp
        end
      end
    end
  end
end
