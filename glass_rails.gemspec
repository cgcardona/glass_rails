# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'glass_rails/config/config'

Gem::Specification.new do |gem|
  gem.name        = 'glass_rails'
  gem.version     = GlassRails::Config::STRING
  gem.date        = GlassRails::Config::DATE
  gem.license     = 'MIT'
  gem.summary     = 'Mirror Api V1'
  gem.description = 'Timeline, Location, Contact, and Subscription CRUD data model. Helper methods for CRUD and templates'
  gem.authors     = ['Carlos Cardona']
  gem.email       = 'cgcardona@gmail.com'
  gem.files       = ['lib/glass_rails.rb']
  gem.require_paths = ['lib']
  gem.homepage    = 'http://rubygems.org/gems/glass_rails'
  gem.add_development_dependency 'rspec'
end
