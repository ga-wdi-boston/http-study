require 'rubygems'
require 'rack'

app = lambda{ |env| [200, { }, "You requested the path #{env['PATH_INFO']}"] }

Rack::Handler::WEBrick.run app, Port: 1234
# Rack::Handler::Thin.run app, :Port => 1234

# ruby show_path_info.rb

# This will show that the path info is /my/path/dude
# curl http://localhost:1234/my/path/dude
