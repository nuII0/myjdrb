module Myjdrb
  module Mixin
    module MemberEquality
      def ==(other)
        other.class == self.class && other.state == self.state
      end
      alias :eql? :==

      def state
        self.instance_variables.map { |variable| self.instance_variable_get variable }
      end
    end
  end
end

