require 'rubygems'
require 'rack'

# Simplest app, just show the current time.

# Need 3 elements in the array. This will set the HTTP Status, Header fields and Body in the
# HTTP Response.

# HTTP status is 200 OK
# Set the Content-Type to be plain text in the HTTP Response Header.
# Set the Body of the HTTP Response.
app =  lambda{ |env|  [200, {'Content-Type' => 'text/plain'}, ["The time is #{Time.now}"] ] }

# Using the WEBrick HTTP server listening on port 1234
Rack::Handler::WEBrick.run app, Port: 1234

# On the command line
#######################

# Run this rack app.
# ruby simplest.rb

# Send a HTTP request
# curl http://localhost:1234
