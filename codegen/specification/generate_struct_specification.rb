require 'nokogiri'
class StructCodegen

  def self.process input
    structures = input.xpath("//h1[text()[contains(.,'Structures')]]/following::div[@class='header3']")

    formatted_structures = structures.collect do |structure|
      struct_name_head =  structure.xpath('h3')

      struct_name = struct_name_head.text.scan(%r{(.*)class.*}).flatten.first

      parameter_text = struct_name_head.xpath('following::pre').first.text

      parameter = parameter_text.each_line.collect do |l|
        matchdata = l.match(%r{.*"(.*)\".*=.*\((.*)\)})

        next unless matchdata
        { name: matchdata[1], type: matchdata[2] }
      end.compact

      { name: struct_name, parameter: parameter }
    end

    formatted_structures
  end
end
