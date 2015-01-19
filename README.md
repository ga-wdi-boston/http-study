![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

# HTTP Overview

## Objectives

By the end of this, students should be able to:

- Have a basic understanding of the Hypertext Transfer Protocol (HTTP).
- Understand REST and it's terminology, resources vs representation, etc.
- Understand Universal Resource Location (URL).
- Know the flow of a web request from a client to server and back.
- Trace, inspect and debug web requests using common developer tools.

### Background

The HTTP protocol is used to communicate over the "Web". It defines the format
of messages passed between **HTTP clients** and **HTTP servers**.

![Web Architecture](./images/webserver_to_rails_setup.jpeg "Web Architecture")

Some typical **HTTP clients** are Browsers(Chrome, Firefox, etc.), command line programs(curl, wget) and other web applications. **HTTP client** create **HTTP Requests**.

The most popular **HTTP servers** are [Apache](http://httpd.apache.org/) and [Nginx](http://nginx.com/). But there are lots of [Web Servers](http://en.wikipedia.org/wiki/Comparison_of_web_server_software). Some web servers are [written using Ruby](https://www.ruby-toolbox.com/categories/web_servers). They recieve **HTTP Requests** and often pass them on to web applications.

**Web applications** are built by a developer with a framework like Rails or Node.js. They are passed HTTP Requests from the HTTP server and create HTTP Responses.

![HTTP Request and Response](images/http_req_resp.gif)


1. **HTTP Clients** send a **HTTP Request** to a **HTTP server**.
	* The host name in the URL will identify the server.
2. The **HTTP Server** will then process the **HTTP Request**.
	* The web application will be passed this **HTTP Request** and creates a **HTTP Response**.
3. The **HTTP Response** will be returned to the client.
4. The **HTTP client** will process the response.


### Uniform Resource Location (URL)

A URL will uniquely identify a **Resource** on the web. 

![URL](images/http1-url-structure.png)

A **Resource** is something, an entity or object, that lives on the server. For example, it can be Person, Auto, User, Order Cart, Search Form, etc. 

A **Resource** can have multiple **Representations**. The representation coud be some html, an image, a pdf or some other form. 

For example, a Car resource could be represented by a PDF that showed it's specifications or maybe an HTML page that shows marketing info or an image.

## Instructions

Lets explore HTTP and resources.

#### Using Chrome's Inspector.

We'll start by looking at HTTP Requests and Responses using the Chrome Inspector.  

* In Chrome, Command + Option to open up Chrome Inspector. *Or you can Control + Click and select inspect element*  
* Select the Network tab.

![Chrome Inspector](images/chome_inspector.png)

* Go to the **URL** https://generalassemb.ly/

	This will show us quite of few HTTP Requests and Responses.
	
	For each request we'll see the **Path**, **Method**, **Status**, **Type**, **Size** and info about how long it took to get each of these resources.   
	*Most of this information comes from the HTTP Request and Response.*
	
* Some HTTP request are for css, javascript and images that are referenced by the HTML.
* Select generalassemb.ly in the Path column on the far left. Then select the Headers tab. 

	This will show the HTTP Request and Response Headers.
	
	
![HTTP Request and Response](./images/http_request_response.jpeg "HTTP Request and Response")	
	
### HTTP Request

The HTTP Request has a set of fields that provide info. 

![HTTP Request](./images/http_request.jpeg "HTTP Request")  

* GET HTTP Request Format  
	[http request method] [URL] [http version]  
	[headers]

* HTTP Request Methods *(GET and POST most used.)*  
	* GET. Retrieve a resource.  
	* POST. Create a resource.  
	* PUT. Update a resource.  
	* DELETE, Delete a resource.  
	* HEAD, Retreive the headers for a resource.  

* Example GET Request:  
		GET http://vermonster.com HTTP/1.1  
		Accept:text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8  
		Accept-Encoding:gzip,deflate,sdch   
		Accept-Language:en-US,en;q=0.8  
		Connection:keep-alive  
		Host:vermonster.com  
		User-Agent:Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5)  
		AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1659.2 Safari/537.36  
		
### HTTP Response
![HTTP Response](./images/http_response.jpeg "HTTP Response")

Reply to a HTTP client from a web server.
  
* HTTP Response Format    
	[version] [status] [reason]  
	[headers]
  
	[body]	# typically HTML, json, ...  
* HTTP version should be 1.1
* Status Codes, [Status Codes](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes)
		* 200  OK 
   		* 301 Moved Permanently 
		* 302 Moved Temporarily 
   		* 400 Bad Request   
		* 403 Forbidden 
		* 404 Not Found 
		* 500 Internal Server Error

		
## Your turn
* Run a very simple HTTP Server, WEBRick, on port 5000.
	```ruby -run -e httpd . -p5000 ```  
	
	This will start the default Ruby webserver on *localhost* at port 5000. It will listen for HTTP Requests from a HTTP client and send a HTTP Response back to this client.
* Open Chrome Inspector
* Go to URL http://localhost:5000/stooges/moe_howard.html.
* Find another student/s to help you draw flow of HTTP Request/Response from the client to the server and back.  
	* Use a whiteboard and show it to an instructor!  
* What is the resource?
* What is the representation?
	* What field in the HTTP Response indicates the representation?
* How does the browser know which server to get the resource from?
	* Where is this info kept in the HTTP Request?  
* What is the resource path?
	* Where is this info kept in the HTTP Request?  
* What HTTP Method is used in the Request?  
	* Where is this info kept in the HTTP Request? 
* What kind of HTTP client is being used?  
	* Where is this info kept in the HTTP Request? 
* What is the status of this request?
 	* Where is this info kept in the HTTP Response?  
* What kind of HTTP Server is being used?  
 	* Where is this info kept in the HTTP Response? 

* Use another HTTP client, **curl** to view moe's resource and the HTTP info.
	```curl -v http://localhost:5000/stooges/moe_howard.html```  
	
* Access another, image, representation of this resource with Chrome Inspector and curl.  http://localhost:5000/stooges/moe_howard.jpg

* Use [hurl](https://www.hurl.it/) to access the above resource.

**Now you can debug HTTP with Three different tools!**
	
	
## HTTP Methods

Watch this video about when to use a [HTTP GET or POST](https://www.youtube.com/watch?v=kGOpY2J31pI)


## Additional Resources

- [9 uses for curl](http://localhost:5000/)
- [HTTP RFC](http://tools.ietf.org/html/rfc2616)
- [URL RFC](https://tools.ietf.org/html/rfc3986)
- [HTTP Status Codes](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes)
- [Media Types](http://en.wikipedia.org/wiki/Internet_media_type)
