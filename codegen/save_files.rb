require_relative 'codegen'

g = CodeGen.new

p "Generating Structs Code.."
File.write('../lib/myjdrb/struct/generated.rb', g.struct_code)
p "OK!"

p "Generating Enum Code.."
File.write('../lib/myjdrb/enum/generated.rb', g.enum_code)
p "OK!"

p "Generating Resource Code.."
File.write('../lib/myjdrb/resource/generated.rb', g.resource_code)
p "OK!"
