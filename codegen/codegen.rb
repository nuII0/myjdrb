require 'json'
require 'erb'

class CodeGen

  def initialize
    resources = JSON.parse(File.read('specification/output/resources.json'), symbolize_names: true)
    structs = JSON.parse(File.read('specification/output/structs.json'), symbolize_names: true)
    enums = JSON.parse(File.read('specification/output/enums.json'), symbolize_names: true)

    @struct_names = structs.map { |h| h.fetch(:name) }
    @enum_names = enums.map { |h| h.fetch(:name) }

    typed_resources = convert_resources_types resources

    @ordered_resources = typed_resources.group_by { |x| x[:namespace] }

    # remove for now
    @ordered_resources.delete("captchaforward")
    @ordered_resources.delete("flash")

    typed_structs = convert_structs_types structs
    structs_default_values = set_structs_default_values typed_structs

    @structs = structs_default_values

    enums = merge_duplicate_enums enums
    @enums = normalize_enum_names enums

  end

  def resource_code
    b = binding
    b.local_variable_set(:ordered_resources, @ordered_resources)

    t = load_template('erb_templates/resource_code.erb')
    t.result( b )
  end

  def enum_code
    b = binding
    b.local_variable_set(:enums, @enums)
    t = load_template('erb_templates/enum_code.erb')
    t.result( b )
  end

  def struct_code
    b = binding
    b.local_variable_set(:structs, @structs)
    t = load_template('erb_templates/struct_code.erb')
    t.result( b )
  end

  def load_template path
    ERB.new(File.read(path), nil, '-')
  end

  private
  def java_type_to_ruby type
    case type&.downcase
    when "string"
      "String"
    when "char"
      "String"
    when "int"
      "Integer"
    when "integer"
      "Integer"
    when "long"
      "Integer"
    when "short"
      "Integer"
    when "float"
      "Float"
    when "double"
      "Float"
    when "number"
      "Float"
    when "date"
      "Date"
    when "DateTime".downcase
      "DateTime"
    when "boolean"
      "TrueClass"
    when "array"
      "Array"
    when "List".downcase
      "Array"
    when "map"
      "Hash"
    when "object"
      "Object"
    when "file"
      "File"
    when "binary"
      "String"
    when "ByteArray".downcase
      "String"
    when "UUID".downcase
      "String"
    when "V".downcase
      "String"
    when "JsonMap".downcase
      "String"
    when "/captcha/getCaptcha".downcase
      "String"
    when "DirectConnectionInfos".downcase
      "String"
    when "boolean|null"
      "TrueClass"
    when "StorageInformation".downcase
      "String"
    when "SystemInformation".downcase
      "String"
    when "UrlDisplayTypeStorable".downcase
      "String"
    when "UrlDisplayTypes".downcase
      "String"
    when "LogFolderStorable".downcase
      "LogFolder"
    when nil
      "nil"
    else
      if is_enum? type
        type
      elsif is_struct? type
        type
      else
        raise "unknown type received: #{type}"
      end
    end
  end

  def is_struct? type
    @struct_names.any? {|n| n.eql? type }
  end

  def is_enum? type
    @enum_names.any? {|n| n.eql? type }
  end

  def convert_type type
    case type
    when %r{Map<.*>}
      "String"
    when %r{List<(.*)>}
      "[#{java_type_to_ruby Regexp.last_match[1]}]"
    when "Long"
      "Integer"
    when "long"
      "Integer"
    when %r{(.*)\[\]}
      "[#{convert_type Regexp.last_match[1]}]"
    else
      java_type_to_ruby type
    end
  end

  def resolve_enum_namespace enum_const
    "Myjdrb::Enum::#{enum_const}"
  end

  def resolve_struct_namespace struct_const
    "Myjdrb::Struct::#{struct_const}"
  end

  def merge_duplicate_enums arr
    duplicates = arr.group_by{ |e| e[:name] }.select { |k, v| v.size > 1 }

    stripped_duplicates = arr.reject { |e| duplicates.keys.include? e[:name] }

    merged_duplicates = duplicates.map do |k,v|
      { name: k, fields: v.collect {|e| e[:fields] }.flatten } 
    end

    stripped_duplicates.concat merged_duplicates
  end

  def normalize_enum_names enums
    enums.map do |enum|
      enum[:name] = normalize_name(enum[:name])
      enum
    end
  end

  def normalize_name name
    if (name == name.upcase)
      name.capitalize
    else
      name
    end
  end

  def struct_default_value struct_name, parameter_name, parameter_type
    case parameter_name
    when "maxResults"
      return -1
    when "priority"
      unless parameter_type.eql? "TrueClass"
        return "Myjdrb::Enum::Priority.new('DEFAULT')"
      end
    end

    case parameter_type
    when "TrueClass"
      return true
    when "Integer"
      return 0
    when "String"
      return '""'
    when "Array"
      return '[]'
    when "[String]"
      return '[]'
    when '[Integer]'
      return '[]'
    end
  end

  def convert_resources_types resources
    resources.map do |r|
      tmp = r.dup
      tmp[:return] = convert_type(r[:return])
      if r[:parameter]
        tmp[:parameter] = r[:parameter].map do |p|
          tmp_p = p.clone
          tmp_p[:type] = convert_type(p[:type])
          tmp_p
        end
      end
      tmp
    end
  end

  def convert_structs_types structs
    structs.map do |s|
      tmp = s.dup
      tmp[:parameter] = s[:parameter].map do |p|
        tmp2 = p.dup
        tmp2[:type] =  convert_type(p[:type])
        tmp2
      end
      tmp
    end
  end

  def set_structs_default_values structs
    structs.map do |s|
      tmp = s.dup
      if s[:parameter]
        tmp[:parameter] = s[:parameter].map do |p|
          tmp2 = p.dup
          default_value = struct_default_value(s[:name], p[:name], p[:type])
          if default_value
            tmp2[:default] = default_value
          end
          tmp2
        end
      end
      tmp
    end

  end
end
