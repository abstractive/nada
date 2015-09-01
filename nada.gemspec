# -*- encoding: utf-8 -*-

require File.expand_path('../lib/nada/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name         = "nada"
  gem.version      = Nada::VERSION
  gem.platform     = Gem::Platform::RUBY
  gem.summary      = "NoSQL abstraction layer for Ruby, with 'evented' I/O."
  gem.description  = "NoSQL abstraction layer for Ruby, with 'evented' I/O provided by Celluloid."
  gem.licenses     = ["MIT"]

  gem.authors      = ["Donovan Keme"]
  gem.email        = ["code@extremist.digital"]
  gem.homepage     = "https://github.com/abstractive/nada"

  gem.required_ruby_version     = ">= 1.9.2"
  gem.required_rubygems_version = ">= 1.3.6"

  gem.files        = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|examples|spec|features)/}) }
  gem.require_path = "lib"

  gem.add_development_dependency "rake", "~> 10.4.2"
  gem.add_development_dependency "rspec", "~> 3.2.0"
  gem.add_development_dependency "rubocop", "~> 0.33.0"
  gem.add_development_dependency "coveralls", "~> 0.8.2"

  #de Specific database drivers to test and benchmark:
  gem.add_development_dependency "rethinkdb", "~> 2.1.0"
  gem.add_development_dependency "mongo", "~> 2.0.6"

  gem.add_runtime_dependency "celluloid", ">= 0.17.1.2"
  gem.add_runtime_dependency "celluloid-io", ">= 0.17.1"

end
