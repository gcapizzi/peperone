require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

namespace :spec do
  desc 'Run javascript specs'
  task :javascript do
    sh 'node_modules/.bin/mocha spec/unit/js/'
  end
end
