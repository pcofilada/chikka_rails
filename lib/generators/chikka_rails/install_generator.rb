require 'rails/generators'

module ChikkaRails
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    desc "ChikkaRails Installation"
    def install
      initializer = (File.open(Rails.root.join('config/initializers/chikka_rails.rb')) rescue nil).try :read

      template "initializer.erb", 'config/initializers/chikka_rails.rb' unless initializer
    end

  end
end
