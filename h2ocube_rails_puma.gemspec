# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'h2ocube_rails_puma'
  spec.version       = '0.0.7'
  spec.authors       = ['Ben']
  spec.email         = ['ben@zfben.com']
  spec.description   = 'Puma plugin for Rails and Capistrano'
  spec.summary       = 'Puma plugin for Rails and Capistrano'
  spec.homepage      = 'https://github.com/h2ocube/h2ocube_rails_puma'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'puma'
end
