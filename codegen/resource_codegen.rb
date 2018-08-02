require 'nokogiri'

class ResourceCodegen

  def self.process
    doc = File.open("./documentation.html") { |f| Nokogiri::HTML(f) }

    api_call_uls = doc.xpath('//span[(text() = "Parameter")]/ancestor::ul')

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

        api_calls << api_call
      end
    end


    # Format of api_calls is now
    # [{:parameter=>
    #["1 - context (Context)",
    #"2 - id (String)",
    #"3 - linkIds (long[])",
    #"4 - packageIds (long[])"],
    #:description=>"Invoke a menu action on our selection and get the results.",
    #:call=>"/ui/invokeAction?context&id&linkIds&packageIds",
    #:return=>"Object"},
    #{:parameter=>
    #["1 - context (Context)",
    #"2 - id (String)",
    #"3 - linkIds (long[])",
    #"4 - packageIds (long[])"],
    #:description=>"Invoke a menu action on our selection and get the results.",
    #:call=>"/ui/invokeAction?context&id&linkIds&packageIds",
    #:return=>"Object"}]
    #pp api_calls

    formatted_api_calls = api_calls.collect do |api_call|
      h = Hash.new
      splits = api_call[:call].split('/')
      h[:namespace] = splits[1]
      h[:endpoint] = splits.last.scan(%r{(.*)\?.*}).flatten.first

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

    # now
    #{:namespace=>"ui",
    #:endpoint=>"invokeAction",
    #:parameter=>
    #[{:order=>"1", :name=>"context", :type=>"Context"},
    #{:order=>"2", :name=>"id", :type=>"String"},
    #{:order=>"3", :name=>"linkIds", :type=>"long[]"},
    #{:order=>"4", :name=>"packageIds", :type=>"long[]"}],
    #:description=>"Invoke a menu action on our selection and get the results.",
    #:return=>"Object"},
    #{:namespace=>"ui",
    #:endpoint=>"invokeAction",
    #:parameter=>
    #[{:order=>"1", :name=>"context", :type=>"Context"},
    #{:order=>"2", :name=>"id", :type=>"String"},
    #{:order=>"3", :name=>"linkIds", :type=>"long[]"},
    #{:order=>"4", :name=>"packageIds", :type=>"long[]"}],
    #:description=>"Invoke a menu action on our selection and get the results.",
    #:return=>"Object"}]



    type_compatible_api_calls = formatted_api_calls.collect do |api_call|
      h = api_call.dup
      h[:parameter].each do |p|
        p[:type] = type_align(p[:type])
      end
      p h[:return]
      if h[:return].eql? "AdvancedConfigAPIEntry"
        require 'pry'; binding.pry
      end
      h[:return] = type_align(h[:return])
      h
    end

    return type_compatible_api_calls
  end

  def self.type_align(type_string)
    case type_string
    when %r{Map.*}
      "Object"
    when %r{List<(.*)>}
      "[#{Regexp.last_match[1]}]"
    when "Long"
      "Integer"
    when "long"
      "Integer"
    when %r{(.*)\[\]}
      "[#{type_align Regexp.last_match[1]}]"
    when "boolean"
      "TrueClass"
    else
      "String"
      #type_string
    end
  end
end
