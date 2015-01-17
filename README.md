![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

# HTTP Overview

## Objectives

By the end of this, students should be able to:

- Have a basic understanding of the Hypertext Transfer Protocol (HTTP).
- Understand Universial Resource Location (URL).
- Trace a HTTP Request and Response using common developer tools.
- Create a mimimal HTTP server/backend.

### Background

The HTTP protocol is used to communicate over the "Web". It defines the content
of messages passed between clients and servers.

![Web Architecture](./images/webserver_to_rails_setup.jpeg "Web Architecture")

Some typical HTTP clients are Browsers(Chrome, Firefox, etc.), command line programs(curl, wget) and other web applications.

HTTP Clients send HTTP Requests to HTTP/web servers and process HTTP Request returned from these servers.

![HTTP Request and Response](./images/http_request_response.jpeg "HTTP Request and Response")	

The most popular HTTP servers are [Apache](http://httpd.apache.org/) and [Nginx](http://nginx.com/). But there are lots of [Web Servers](http://en.wikipedia.org/wiki/Comparison_of_web_server_software). Some web servers are [written using Ruby](https://www.ruby-toolbox.com/categories/web_servers).  



## Instructions

#### Using Chrome's Inspector.

We'll start by looking at HTTP Requests and Responses using the Chrome Inspector.  

* In Chrome go to google.com.
* Command + Option to open up Chrome Inspector. *Or you can Control + Click and select inspect element*  
* Select the Network tab.

![Chrome Inspector](images/chome_inspector.png)

* Go to https://generalassemb.ly/

	This will show us quite of few HTTP Requests. Some will be for the HTML page itself, others will be for images, css and javascript files. **Each of these are Resources**. 

	For each request we'll see the Path, Method, Status, Type, Size and info about how long it took to get each of these resources. 
	
	Most of this information comes from the HTTP Request and Response.
	
* All these resources, (css, javascript, images), are referenced by the HTML page/resource. 
* Select the *generalassemb.ly' resource in the Path column on the far left. The select the Headers tab. 

	This will show the HTTP Request and Response Headers.
* Run this on the command line.  
	```ruby -run -e httpd . -p5000 ```  
	
	This will start the default Ruby webserver on port 5000. It will listen for HTTP Requests from a HTTP client and send a HTTP Response back to this client.

## Bonus (Optional Section)

If you're looking for extra challenge or practice once you've completed the above, try to...

## Notes

Gotcha's and extra information

## Additional Resources

List additional related resources such as videos, blog posts and official documentation.

- Item 1
- Item 2
- Item 3
