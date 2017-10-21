require 'bundler/setup'
load 'tasks/otr-activerecord.rake'

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
  task default: :spec
rescue LoadError
end

task :environment do
  require_relative 'config/application'
end
