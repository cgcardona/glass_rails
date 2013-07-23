require 'rails/generators'
module GlassRails
  class InstallGenerator << Rails::Generator::Base
    include Rails::Generators::Migration
    desc "Build out data model"
  end
end
