module Myjdrb
  module Resource
    Definition = ::Struct.new(:name, :parameter_schema, :return_type, :http_type, keyword_init: true) do
      def ambigious? other
        if ((self.name.eql? other.name) && (self.parameter_schema.keys.eql? other.parameter_schema.keys) && (self.http_type.eql? other.http_type))
          true
        else
          false
        end
      end

      def classy_hash_schema
        @classy_hash_schema ||= parameter_schema.inject({}) do |h,(k,v)|
          h[k] = v[:type]
          h
        end
      end
    end
  end
end
