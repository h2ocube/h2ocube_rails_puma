require 'puma'

module H2ocubeRailsPuma
  module Rails
    class Rails::Engine < ::Rails::Engine
      initializer 'h2ocube_rails_puma.require_dependency' do |app|
      end
    end
  end
end
