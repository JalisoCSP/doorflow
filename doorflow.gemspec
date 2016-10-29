# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'doorflow/version'

Gem::Specification.new do |spec|
  spec.name          = "doorflow"
  spec.version       = Doorflow::VERSION
  spec.authors       = ["Craig Petterson"]
  spec.email         = ["craig@calajo.co.uk"]

  spec.summary       = 'Ruby actions for Doorflow API'
  spec.description   = 'A test gem to use the Doorflow API, detailed at https://developer.doorflow.com/'
  spec.homepage      = 'https://developer.doorflow.com/'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
