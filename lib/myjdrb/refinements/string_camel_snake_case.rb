module StringCamelSnakeCase
  refine String do

    # Converts a string to camelcase. This method leaves the first character
    # as given. This allows other methods to be used first, such as #uppercase
    # and #lowercase.
    #
    #   "camel_case".camelcase          #=> "camelCase"
    #   "Camel_case".camelcase          #=> "CamelCase"
    #
    # Custom +separators+ can be used to specify the patterns used to determine
    # where capitalization should occur. By default these are underscores (`_`)
    # and space characters (`\s`).
    #
    #   "camel/case".camelcase('/')     #=> "camelCase"
    #
    # If the first separator is a symbol, either `:lower` or `:upper`, then
    # the first characters of the string will be downcased or upcased respectively.
    #
    #   "camel_case".camelcase(:upper)  #=> "CamelCase"
    #
    # Note that this implementation is different from ActiveSupport's.
    # If that is what you are looking for you may want {#modulize}.
    #
    def camelcase(*separators)
      case separators.first
      when Symbol, TrueClass, FalseClass, NilClass
        first_letter = separators.shift
      end

      separators = ['_', '\s'] if separators.empty?

      str = self.dup

      separators.each do |s|
        str = str.gsub(/(?:#{s}+)([a-z])/){ $1.upcase }
      end

      case first_letter
      when :upper, true
        str = str.gsub(/(\A|\s)([a-z])/){ $1 + $2.upcase }
      when :lower, false
        str = str.gsub(/(\A|\s)([A-Z])/){ $1 + $2.downcase }
      end

      str
    end

    # Underscore a string such that camelcase, dashes and spaces are
    # replaced by underscores. This is the reverse of {#camelcase},
    # albeit not an exact inverse.
    #
    #   "SnakeCase".snakecase         #=> "snake_case"
    #   "Snake-Case".snakecase        #=> "snake_case"
    #   "Snake Case".snakecase        #=> "snake_case"
    #   "Snake  -  Case".snakecase    #=> "snake_case"
    #
    # Note, this method no longer converts `::` to `/`, in that case
    # use the {#pathize} method instead.
    def snakecase
      #gsub(/::/, '/').
      gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
        gsub(/([a-z\d])([A-Z])/,'\1_\2').
        tr('-', '_').
        gsub(/\s/, '_').
        gsub(/__+/, '_').
        downcase
    end
  end
end
