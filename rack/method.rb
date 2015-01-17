require 'rubygems'
require 'rack'

# define a method that is a Rack app
def foo(env)
  [200, { }, ["Hello from method"]]
end

Rack::Handler::WEBrick.run method(:foo), :Port => 1234

# ruby method.rb
# 
# curl http://localhost:1234
