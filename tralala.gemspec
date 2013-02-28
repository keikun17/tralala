# -*- encoding: utf-8 -*-
require File.expand_path('../lib/tralala/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["keikun17"]
  gem.email         = ["keikun17@gmail.com"]
  gem.description   = %q{A Rails test gem that exposes and marks the calls that
                        touches the database (to help you find tests that hit
                        the database)}
  gem.summary       = %q{A Rails gem that helps you find which tests hit the database}
  gem.homepage      = "https://github.com/keikun17/tralala"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "tralala"
  gem.require_paths = ["lib"]
  gem.version       = Tralala::VERSION

  gem.add_dependency 'activesupport', '> 3.0'
  gem.add_dependency 'activerecord', '> 3.0'
  gem.add_dependency 'minitest'
end
