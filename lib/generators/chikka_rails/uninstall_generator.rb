require 'rails/generators'

module ChikkaRails
  class UninstallGenerator < Rails::Generators::Base
    
    desc "ChikkaRails Uninstalltion"
    def uninstall
      remove_file 'config/initializers/chikka_rails.rb'
    end

  end
end
