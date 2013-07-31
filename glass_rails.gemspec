# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'glass_rails/config/config'

Gem::Specification.new do |s|
  s.name        = 'glass_rails'
  s.version     = GlassRails::Config::VERSION
  s.date        = GlassRails::Config::DATE
  s.license     = 'MIT'
  s.summary     = 'Mirror Api V1'
  s.description = 'Timeline, Location, Contact, and Subscription CRUD data model. Helper methods for CRUD and templates'
  s.authors     = ['Carlos Cardona']
  s.email       = 'cgcardona@gmail.com'
  s.files       = ['lib/glass_rails.rb']
  s.require_paths = ['lib']
  s.homepage    = 'http://rubygems.org/gems/glass_rails'
  s.add_development_dependency 'rspec'
end
