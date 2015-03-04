# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = 'vigilem-evdev-stat'
  spec.version       = '0.0.2'
  spec.summary       = 'Stat(us) for whether or not Evdev is available'
  spec.description   = 'Stat(us) for whether or not Evdev is available'
  spec.authors       = ['jtzero']
  spec.email         = ['jtzero511@gmail.com']
  spec.homepage      = 'http://rubygems.org/gems/vigilem-evdev-stat'
  spec.license       = 'MIT'
  
  spec.add_dependency 'vigilem-core'
  spec.add_dependency 'vigilem-dom'
  
  spec.add_development_dependency 'yard'
  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.1'
  spec.add_development_dependency 'rspec-given'
  spec.add_development_dependency 'turnip'
  spec.add_development_dependency 'guard-rspec'
  
  spec.files         = Dir['{lib,spec,ext,test,features,bin}/**/**'] + ["License.txt"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
end
