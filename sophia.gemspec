# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sophia/version'

Gem::Specification.new do |gem|
  gem.name          = "sophia"
  gem.version       = Sophia::VERSION
  gem.authors       = ["Rafael Gumieri"]
  gem.email         = ["rafael@gumieri.com"]
  gem.description   = %q{sophia}
  gem.summary       = %q{A beautiful librarian}
  gem.homepage      = "http://sophia.gumieri.com"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
