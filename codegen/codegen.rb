require 'erb'
require_relative 'resource_codegen'
require_relative 'struct_codegen'

resources = ResourceCodegen.process
structs = StructCodegen.process
p structs

resources = resources.delete_if do |resource|
  ["flash","captchaforward"].any? resource[:namespace]
end

ordered = resources.group_by { |x| x[:namespace] }
resource_code = <<~HEREDOC
require 'myjdrb/resource_proxy'
require 'myjdrb/struct/generated'
module Myjdrb
  module Resource
  <%- ordered.each do |namespace, api_calls| -%>
    class <%= namespace.capitalize -%> < ResourceProxy
      def initialize(device_id:, sessiontoken:, executer:)
        super(device_id: device_id,
              sessiontoken: sessiontoken,
              executer: executer,
              endpoint_name: "<%= namespace -%>")

        <%- api_calls.each do |api_call| -%>
        define_resource(
                        name: :<%= api_call[:endpoint] -%>,
                        parameter:
                        {
                        <%- api_call[:parameter].each_with_index do |param, index| -%>
                          <%= param[:name] -%>:
                          {
                            type: <%= param[:type] %>
                          <%- if (((api_call[:parameter].length) -1).eql? index) -%>
                          }
                          <%- else -%>
                          },
                          <%- end -%>
                        <%- end -%>
                        },
                        return: <%= api_call[:return] || "nil" %>
        )
        <%- end -%>
      end
    end
  <%- end -%>
  end
end
HEREDOC

template = ERB.new(resource_code, nil, '-')
#print template.result( binding )

