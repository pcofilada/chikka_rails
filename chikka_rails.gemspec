# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chikka_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "chikka_rails"
  spec.version       = ChikkaRails::VERSION
  spec.authors       = ["Patrick Ofilada"]
  spec.email         = ["hello@patrickofilada.com"]
  spec.summary       = %q{Rails gem for communicating with Chikka API.}
  spec.description   = %q{Rails gem for communicating with Chikka API.}
  spec.homepage      = "https://github.com/pcofilada/chikka_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
