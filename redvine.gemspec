# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'redvine/version'

Gem::Specification.new do |gem|
  gem.name          = "greenredvinesgrowontrellis"
  gem.version       = Redvine::VERSION
  gem.authors       = ["Miguel (CC: Jay Stakelon)"]
  gem.email         = ["notgivingyoumyemail@nope.com"]
  gem.description   = %q{A client for the Trellis API.}
  gem.summary       = gem.description
  gem.homepage      = "http://github.com/migbrunluz2/redvine-trelli"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'httparty'
  gem.add_dependency 'hashie'

  gem.add_development_dependency 'debugger'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'vcr'
  gem.add_development_dependency 'autotest-standalone'
end
