require 'nokogiri'

class ResourceCodegen

  def self.process input
    doc = input

    api_call_uls = doc.xpath('//span[(text() = "Call")]').collect { |p| p.xpath('ancestor::ul').first }

    api_calls = Array.new

    api_call_uls.each do |api_call_ul|

      api_call = Hash.new
      api_call[:parameter] = []

      api_call_ul.xpath('li').each do |li|
        spans = li.xpath('span')

        option = spans.first&.text
        item = spans.last&.text

        case option
        when 'Call'
          api_call[:call] = item
        when 'Parameter'
          api_call[:parameter] << item
        when %r{Return.*type}
          api_call[:return] = item
        when 'Description'
          api_call[:description] = item
        when %r{Possible.*Error}
          next
        when nil
          next
        else
          # See if item begins with a number
          if (item[0].to_i.to_s.eql? item[0])
            api_call[:parameter] << item
          end
        end

      end
      api_calls << api_call
    end

    formatted_api_calls = api_calls.collect do |api_call|
      h = Hash.new
      splits = api_call[:call].split('/')

      if splits.length.eql? 3
        h[:namespace] = splits[1]
      else
        h[:namespace] = "root"
      end

      h[:endpoint] = splits.last.split('?').first.split('.').first

      h[:parameter] = api_call[:parameter].collect do |p|
        h2 = Hash.new
        match = p.match(%r{(.*)[[:blank:]]-[[:blank:]](.*)[[:blank:]]\((.*)\)})
        unless match
          match = p.match(%r{(.*)[[:blank:]]-(.*)})
        end
        h2[:order] = match[1]
        h2[:name] = match[2]
        h2[:type] = match[3]
        h2
      end

      h[:description] = api_call[:description]
      h[:return] = api_call[:return]
      h
    end

    return formatted_api_calls
  end

  #def self.type_align(type_string)
  #case type_string
  #when %r{Map.*}
  #"Object"
  #when %r{List<(.*)>}
  #"[#{Regexp.last_match[1]}]"
  #when "Long"
  #"Integer"
  #when "long"
  #"Integer"
  #when %r{(.*)\[\]}
  #"[#{type_align Regexp.last_match[1]}]"
  #when "boolean"
  #"TrueClass"
  #else
  #"String"
  ##type_string
  #end
  #end
end
