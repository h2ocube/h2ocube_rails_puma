class H2ocubeRailsPumaGenerator < Rails::Generators::Base
  source_root File.expand_path('../source', __FILE__)

  desc 'Creates a puma.rb to your config/.'

  def copy_puma_rb
    template 'puma.rb.erb', 'config/puma.rb'
  end
end
