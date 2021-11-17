# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'priority_queue'
  spec.version       = '0.2.1'
  spec.authors       = ['Brian Schröder']
  spec.email         = ['priority_queue@brian-schroeder.de']

  spec.summary       = 'This is a fibonacci-heap priority-queue implementation.'
  spec.description   = 'This is a fibonacci-heap priority-queue implementation.'
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ['lib']
  spec.add_development_dependency 'rake', '>= 1.9.1'
  spec.add_development_dependency 'rake-compiler', '>= 0.8.3'
  spec.extensions = %w[ext/priority_queue/extconf.rb]
end
