# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'osdi_validator/version'

Gem::Specification.new do |spec|
  spec.name          = "osdi_validator"
  spec.version       = OsdiValidator::VERSION
  spec.authors       = ["Tim Anderegg"]
  spec.email         = ["timothy.anderegg@gmail.com"]

  spec.summary       = %q{Validates compliance of a given API endpoint with the OSDI specification.}
  spec.description   = %q{Validates compliance of a given API endpoint with the OSDI specification.}
  spec.homepage      = "http://opensupporter.org/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ["osdi_validator"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
