# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fluent/plugin/record/serializer/version'

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-record-serializer"
  spec.version       = Fluent::Plugin::Record::Serializer::VERSION
  spec.authors       = ["IKUTA Masahito"]
  spec.email         = ["cooldaemon@gmail.com"]
  spec.summary       = %q{Fluentd output filter plugin for serialize record.}
  spec.description   = spec.summary
  spec.homepage      = "http://github.com/cooldaemon/fluent-plugin-record-serializer"
  spec.license       = "APLv2"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "test-unit", ["~> 3.0", "~> 3.1"]

  spec.add_dependency "fluentd", ">= 0.10.53"
end
