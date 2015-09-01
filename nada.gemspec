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

  gem.add_runtime_dependency "celluloid", ">= 0.17"
  gem.add_runtime_dependency "celluloid-io", ">= 0.17"

end
