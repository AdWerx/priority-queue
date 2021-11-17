require 'bundler/gem_tasks'
require 'rake/extensiontask'

gemspec = Gem::Specification.load('priority_queue.gemspec')

Rake::ExtensionTask.new('priority_queue', gemspec)

task default: %w(compile)

task build: %w(compile) do
  system 'gem build priority_queue.gemspec'
end
