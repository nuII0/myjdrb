module Myjdrb
  module Mixin
    module Initializable
      def make_instance_variables parameters, binding
        parameters.each do |parameter| 
          instance_variable_set("@#{parameter[1]}".to_sym, binding.local_variable_get(parameter[1]))

          self.singleton_class.send(:define_method ,"#{parameter[1].to_s}=") do |val|
            instance_variable_set("@#{parameter[1].to_s}", val)
          end

          self.singleton_class.send(:define_method, "#{parameter[1].to_s}") do 
            instance_variable_get("@#{parameter[1].to_s}")
          end
        end
      end

      def to_h
        Hash[instance_variables.map { |name| [name[1..-1].to_sym, instance_variable_get(name)] } ]
      end
    end
  end
end

