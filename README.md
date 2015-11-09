# H2ocubeRailsPuma

[![Gem Version](https://badge.fury.io/rb/h2ocube_rails_puma.png)](http://badge.fury.io/rb/h2ocube_rails_puma)

Puma helper.

## Installation

Add this line to your application's Gemfile:

    gem 'h2ocube_rails_puma', group: [:development, :production]

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install h2ocube_rails_puma

## Usage

    # generate config/puma.rb
    rails g h2ocube_rails_puma

    # Capfile
    require 'capistrano/puma'

    # deploy.rb
    set :puma_rb, 'config/puma.rb'
    set :puma_threads, '0:16'
    set :puma_workers, '2'

Puma specific tasks for Capistrano v3:

    cap puma:start
    cap puma:stop
    cap puma:restart
    cap puma:phased_restart
    cap puma:cold_restart

    # nginx.conf
    upstream app {
      server unix:/root/app/shared/sockets/puma.sock fail_timeout=0;
    }
    server {
      listen 80;
      server_name app.com;
      root /root/app/current/public;
      location / {
        if ($request_uri ~* "\.(ico|css|js|gif|jpe?g|png)\?[0-9]*$") {
          expires max;
          break;
        }
        try_files $uri @app;
      }
      location @app {
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header Host $http_host;
        proxy_set_header X-UA-Compatible IE=edge,chrome=1;
        proxy_redirect off;
        proxy_pass http://app;
      }
    }

## Include

* puma https://github.com/puma/puma

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
