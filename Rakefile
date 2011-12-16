require 'rake/clean'
require 'rspec/core/rake_task'

CLEAN	=	Rake::FileList["**/*~", "**/*.bak", "**/core", './coverage']

RSpec::Core::RakeTask.new(:spec) do |t| 
  t.pattern = './test/specs/*_spec.rb'
  t.rcov = false
end

task :default => :spec
