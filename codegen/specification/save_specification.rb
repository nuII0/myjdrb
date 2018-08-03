require 'nokogiri'
require 'json'

require_relative 'generate_resource_specification'
require_relative 'generate_struct_specification'
require_relative 'generate_enum_specification'

source = Nokogiri::HTML(File.read('documentation.html'))



resources = JSON.pretty_generate(ResourceCodegen.process source)
structs = JSON.pretty_generate(StructCodegen.process source)
enums = JSON.pretty_generate(EnumCodegen.process source)

File.write('output/enums.json', enums)
File.write('output/structs.json', structs)
File.write('output/resources.json', resources)
