require 'classy_hash'

module Myjdrb
  module Mixin
    module TypedMethod
      # Defines a method which takes the keys
      # from @parameters as keyword arguments.
      #
      # The parameters can be constraint to a type
      # and set to a default.
      # @param name [Symbol] name of the new method
      # @param parameter [Hash] keyword arguments
      # @yield the final parameters as hash.
      #
      # @example
      #   name = :my_new_method
      #   parameter_schema = {
      #                 argument1: { type: Numeric },
      #                 argument1: { type: String }, default: "foo" },
      #                 argument2: { type: ->(v) {v.is_a? Regexp}, default: %r{.*}}
      #               }
      #   define_typed_method(name: name, parameter_schema: parameter_schema) { |h| p h }
      #
      #   my_new_method(1337)
      #   => { argument1: 1337, argument2: "foo", argument3: %r{.*} }
      def define_typed_method(name:, parameter_schema: {})
        define_method(name) do |**kwargs, &blk|
          schema = parameter_schema.inject({}) do |h,(k,v)|
            h[k] = v[:type]
            h
          end

          default_parameter = parameter_schema.inject({}) do |h,(k,v)|
            if v.has_key? :default
              h[k] = v[:default]
            end
            h
          end

          superfluit_params = kwargs.keys - parameter_schema.keys
          unless superfluit_params.empty?
            raise ArgumentError, "Unrecognized parameter(s) passed: #{superfluit_params.join(",")}"
          end

          # order keys in merged_params to the order of keys in schema
          merged_params = default_parameter.merge(kwargs)
          ordered_params = schema.inject({}) do |h,(k,_)|
            h[k] = merged_params.fetch(k)
            h
          end

          begin
          ClassyHash.validate(ordered_params, schema, full: true, strict: true, verbose: true)
          rescue ClassyHash::SchemaViolationError => e
            raise ArgumentError, e
          end

          blk.call ordered_params
        end
      end
    end
  end
end
