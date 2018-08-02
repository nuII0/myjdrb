# Super robust code generation from JD documentation..
require 'nokogiri'
class StructCodegen

  def self.process
    doc = File.open("./documentation.html") { |f| Nokogiri::HTML(f) }

    structs = Hash.new

    current_struct = nil


    doc.each_line do |line|
      # check if new struct begins
      match = %r{.*my(.*) =.*}
      matchdata = match.match line
      if matchdata
        struct_name = matchdata[1]
        structs[struct_name] = Hash.new
        structs[struct_name][:parameter] = Array.new

        if struct_name.include? "Query"
          structs[struct_name][:query] = true
        else
          structs[struct_name][:query] = false
        end
        current_struct = struct_name
      end

      # check if line is a parameter
      if current_struct
        match = %r{.*"(.*)".*=.*\((.*)\).*}
        matchdata = match.match line

        if matchdata
          parameter_name = matchdata[1]
          parameter_type = matchdata[2].gsub(/<\/?[^>]*>/, "")
          structs[current_struct][:parameter] << {name: parameter_name, type: parameter_type}
        end
      end
    end
  end

  def self.resolve_default_value(parameter,type)
    # handle special case defaults
    case parameter
    when "maxResults"
      return -1
    end

    # generic defaults
    case type
    when "String"
      '"null"'
    when "boolean"
      true
    when "boolean|null"
      false
    when "int"
      0
    when "Long"
      0
    when "Integer"
      -1
    when "Priority"
      '"DEFAULT"'
    when %r{.*\[\].*}
      []
    when %r{.*(List)&.*(.*)&.*}
      []
    else
      raise type
    end
  end
end

#myjdrb_struct_code = <<~HEREDOC
## This file is auto generated
#require 'myjdrb/struct/base'

#module Myjdrb
  #module Struct
    #<%- structs.each do |key,value| -%>
      #class <%= key -%> < Base
        #def initialize(
        #<%- value[:parameter].each_with_index do |param, index| -%>
          #<%- default_value = value[:query] ? resolve_default_value(param[:name],param[:type]) : "" -%>
          #<%- if index == (value[:parameter].size - 1) -%>
          #<%= param[:name] -%>: <%= default_value %>
          #<%- else -%>
          #<%= param[:name] -%>: <%= default_value %>,
          #<%- end -%>
        #<%- end -%>
        #)
          #make_instance_variables method(__method__).parameters, binding
        #end
      #end

    #<%- end -%>
  #end
#end
#HEREDOC

#template = ERB.new(myjdrb_struct_code, nil, '-')
#print template.result( binding )


