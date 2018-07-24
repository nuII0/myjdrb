Dir.glob(File.join(File.dirname(__FILE__), 'structs/*')).each do |file|
  require file
end
