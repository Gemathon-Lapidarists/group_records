# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'group_records/version'

Gem::Specification.new do |spec|
  spec.name          = "group_records"
  spec.version       = GroupRecords::VERSION
  spec.authors       = ["Vaibhav Kohli"]
  spec.email         = ["vaibhav.khl@gmail.com"]
  spec.summary       = %q{groups the record on basis of created_at}
  spec.description   = %q{groups the record on basis of created_at}
  spec.homepage      = "https://github.com/Gemathon-Lapidarists/group_records"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'sqlite3'
  spec.add_dependency "activerecord", "~> 4.0.0"
end
