# frozen_string_literal: true

require_relative "lib/existence/version"

Gem::Specification.new do |spec|
  spec.name = "existence"
  spec.version = Existence::VERSION
  spec.authors = ["Josh Wetzel"]

  spec.summary = "Lightweight presence and blank checks without ActiveSupport"
  spec.homepage = "https://github.com/joshwetzel/existence"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.2"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir["lib/**/*.rb", "LICENSE", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rake"
end
