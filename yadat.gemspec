
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "yadat/version"

Gem::Specification.new do |spec|
  spec.name          = "yadat"
  spec.version       = Yadat::VERSION
  spec.authors       = ["Ignacio Galindo"]
  spec.email         = ["email@joiggama.net"]

  spec.summary       = "Yet Another Development Automation Tool"
  spec.description   = "An experimental CLI to avoid typing repetitive commands"
  spec.homepage      = "https://github.com/joiggama/yadat"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
