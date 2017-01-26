require File.expand_path('../lib/existence/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name = 'existence'
  spec.version = Existence::VERSION
  spec.summary = 'Exposes #present? and #blank? to common Ruby classes.'
  spec.author = 'Josh Wetzel'
  spec.license = 'MIT'

  spec.required_ruby_version = '~> 2'

  spec.add_development_dependency 'coveralls', '~> 0.8'
  spec.add_development_dependency 'minitest', '~> 5'
  spec.add_development_dependency 'rake', '~> 12'
end
