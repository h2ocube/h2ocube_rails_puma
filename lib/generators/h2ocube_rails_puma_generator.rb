class H2ocubeRailsPumaGenerator < Rails::Generators::Base
  source_root File.expand_path('../source', __FILE__)

  desc 'Creates puma.rb.erb to your config/deploy/templates/.'

  def copy_puma_rb
    copy_file 'puma.rb.erb', 'config/deploy/templates/puma.rb.erb'
  end
end
