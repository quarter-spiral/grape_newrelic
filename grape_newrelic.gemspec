# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grape_newrelic/version'

Gem::Specification.new do |gem|
  gem.name          = "grape_newrelic"
  gem.version       = GrapeNewrelic::VERSION
  gem.authors       = ["Thorben Schröder"]
  gem.email         = ["stillepost@gmail.com"]
  gem.description   = %q{Grape Middleware to instrument APIs for Newrelic}
  gem.summary       = %q{Grape Middleware to instrument APIs for Newrelic}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'newrelic_rpm', '~> 3.5.4.33'
  gem.add_dependency 'grape', '>=0.2.2'
end
