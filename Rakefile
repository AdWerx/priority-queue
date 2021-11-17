require 'bundler/gem_tasks'
require 'rake/extensiontask'
require "rake/testtask"

gemspec = Gem::Specification.load('priority_queue.gemspec')

Rake::ExtensionTask.new('priority_queue', gemspec) do |ext|
  ext.lib_dir = "lib/priority_queue"
end

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['test/**/*_test.rb']
end

task(default: %i[compile test])

task build: %w[compile] do
  system 'gem build priority_queue.gemspec'
end
