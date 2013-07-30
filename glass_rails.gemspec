require 'glass/rails/version'

Gem::Specification.new do |s|
  s.name        = 'glass_rails'
  s.version     = Glass::Rails::VERSION
  s.date        = '2013-06-01'
  s.license     = 'MIT'
  s.summary     = "Mirror Api V1"
  s.description = "Timeline, Location, Contact, and Subscription CRUD data model. Helper methods for CRUD and templates"
  s.authors     = ["Carlos Cardona"]
  s.email       = 'cgcardona@gmail.com'
  s.files       = ["lib/glass_rails.rb"]
  #s.ignore_pattern 
  s.homepage    = 'http://rubygems.org/gems/glass_rails'
  s.add_development_dependency 'rspec'
end

#Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext}
