# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_collections/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_collections"
  spec.version       = RubyCollections::VERSION
  spec.authors       = ["Vikash Vikram"]
  spec.email         = ["vikashvikram@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{Collections framework for Ruby for different data structures.}
  spec.description   = %q{RubyCollections gem provides with general collections framework for Ruby language.}
  spec.homepage      = "https://github.com/vikashvikram/ruby_collections"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
