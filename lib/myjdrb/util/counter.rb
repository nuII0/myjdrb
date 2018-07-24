module Myjdrb
  module Util
    # Simple threadsafe incremental counter
    class Counter
      def initialize(start = 0)
        @value = start
        @mutex = Mutex.new
      end

      def produce
        @mutex.synchronize do
          ret = @value
          @value = @value.succ
          ret
        end
      end
    end
  end
end
