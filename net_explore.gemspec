# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'net_explore/version'

Gem::Specification.new do |spec|
  spec.name          = "net_explore"
  spec.version       = NetExplore::VERSION
  spec.authors       = ["rishi"]
  spec.email         = ["rishi@joshsoftware.com"]
  spec.summary       = %q{It's a gem to open browser.}
  spec.description   = %q{Use command line or ruby code to open browser.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency 'os'
end
