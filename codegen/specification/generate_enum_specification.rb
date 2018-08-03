# Super robust code generation from JD documentation..
require 'nokogiri'
class EnumCodegen

  def self.process input

    enum_candidates = input.xpath("//h1[text()[contains(.,'Enums')]]/following::div[@class='header3']")
    arr = Array.new

    enum_candidates.each do |candidate|
      candidate_name_raw =  candidate.xpath('h3')

      candidate_name = candidate_name_raw.text.scan(%r{(.*)class.*}).flatten.first

      break unless candidate_name

      field_table = candidate.xpath('following::ul[@class="enums"]').first

      break unless field_table

      field_entries = field_table.xpath('li')

      break unless field_entries

      entries = field_entries.collect do |e|
        formatted_1 = e.xpath('span/text()[normalize-space()]')

        unless formatted_1.empty?
          formatted_1.text
        else
          e.text.gsub!(/[[:space:]]+/, " ").strip
        end
      end.compact

      arr << { name: candidate_name, fields: entries }
    end

    arr
  end
end
