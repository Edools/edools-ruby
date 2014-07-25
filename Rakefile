# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://guides.rubygems.org/specification-reference/ for more options
  gem.name = "edools-api"
  gem.homepage = "http://github.com/Edools/edools-api"
  gem.license = "MIT"
  gem.summary = %Q{This gem is a Ruby wrapper for all Edools API's}
  gem.description = %Q{
    With this gem you'll be able to access and manipulate all the data of your School or Organization
    hosted at Edools.
  }
  gem.email = "viniciusmkm@gmail.com"
  gem.authors = ["Vinicius Kastrup"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new
require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

desc "Code coverage detail"
task :simplecov do
  ENV['COVERAGE'] = "true"
  Rake::Task['test'].execute
end

task :default => :spec

require 'yard'
YARD::Rake::YardocTask.new
