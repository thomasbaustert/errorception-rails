# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'errorception_rails/version'

Gem::Specification.new do |gem|
  gem.name          = "errorception-rails"
  gem.version       = ErrorceptionRails::VERSION
  gem.authors       = ["Thomas Baustert"]
  gem.email         = ["business@thomasbaustert.de"]
  gem.description   = %q{Add errorception to your Rails app}
  gem.summary       = %q{Add errorception to your Rails app}
  gem.homepage      = "https://github.com/thomasbaustert/errorception-rails"
  gem.license       = 'MIT'
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
end
