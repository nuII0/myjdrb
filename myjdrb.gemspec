lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "myjdrb/version"

Gem::Specification.new do |spec|
  spec.name          = "myjdrb"
  spec.version       = Myjdrb::VERSION
  spec.authors       = ["nuii0"]
  spec.email         = ["nuii0@tuta.io"]

  spec.summary       = %q{A ruby gem to bypass the Cloudflare Anti-Bot protection}
  spec.homepage      = "https://github.com/nuII0/myjdrb"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rest-client"
  spec.add_dependency "classy_hash"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "redcarpet"
  spec.add_development_dependency "pry-coolline"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "pry-stack_explorer"
end
