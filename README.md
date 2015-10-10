![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

# HTTP Overview

## Objectives

By the end of this, students should be able to:

- Walk through the flow of a web request from a client to server and back.
- Identify the different pieces of a Universal Resource Location (URL).
- Explain the difference between a resource and its representation.
- Use the browser, `curl`, and hurl.it to issue GET and POST requests.

## HTTP

HTTP is a protocol - a system of rules - that determines how web pages (see:'hypertext') get sent (see:'transferred') from one place to another. Among other things, it defines the format of the messages passed between **HTTP clients** and **HTTP servers**.

![Web Architecture](./images/webserver_to_rails_setup.jpeg "Web Architecture")

Since the web is a service, it works through a combination of **clients** (which _make_ requests) and **servers** (which _receive_ requests). Browsers (Chrome, Firefox, etc.) are common **HTTP clients**, but there are also command line programs (e.g. [curl](http://curl.haxx.se/docs/), [wget](http://www.gnu.org/software/wget/manual/wget.html)) that can make requests.

Two of the most popular **HTTP servers** are [Apache](http://httpd.apache.org/) and [Nginx](http://nginx.com/), But there are lots different [web servers](http://en.wikipedia.org/wiki/Comparison_of_web_server_software) out there. Some web servers are [written in Ruby](https://www.ruby-toolbox.com/categories/web_servers), while others are written in other languages. All of them recieve **HTTP Requests** and often pass them on to web applications.

**Web applications** are programs built by a developer within a framework like Rails or Express. These programs plug into a server, process the HTTP requests that the server receives, and generate **HTTP Responses**.

![HTTP Request and Response](images/http_req_resp.gif)

Lost? Here's the play-by-play.

1. A client sends a request to a server.
	* The **hostname**, given in the URL, indicates which server will receive the request.
2. The server processes the request. This may entail passing the request to some web application, which creates a response.
3. The response gets sent back to the client.
4. The client processes the response.

How does the server know what the request is asking for? This is specified by the URL, a special kind of path that specifies where a **resource** can be found on the web.

![URL](images/http1-url-structure.png)

> Technically, the term 'resource' refers to an abstraction that your application uses; depending on what the application does, a resource might be a 'Car', a 'Person', a 'User', or an 'Order Cart'. A single resource can be represented in multiple different ways by the server, including through HTML pages, PDF files, and images. What we really mean when we say 'resource' above is a _representation_ of a resource.

### HTTP :: Demo

Lets explore HTTP and resources. We'll start by looking at HTTP requests and responses using the Chrome Inspector.

![HTTP Request and Response](./images/http_request_response.jpeg "HTTP Request and Response")

* In Chrome, open up Chrome Inspector (*command + option + 'i', or ctrl + click and select 'inspect element'*).
* Select the Network tab. It should look something like this:

![Chrome Inspector](images/chome_inspector.png)

* Next, go to the **URL** https://generalassemb.ly/

	You should be able to see a few HTTP Requests and Responses in the Network tab; for each request you'll see a **Path**, **Method**, **Status**, **Type**, and **Size**, along with info about how long it took to get each of these resources.
	*Most of this information comes from the HTTP Request and Response.*

* Some HTTP requests are for CSS, JavaScript and images that are referenced by the HTML.
* Select `generalassemb.ly` in the Path column on the far left.
* Select the Headers tab. **Headers** are meta-data properties of an HTTP request or response, separate from the body of the message.

#### HTTP Request

![HTTP Request](./images/http_request.jpeg "HTTP Request")

The first word in the request line, **GET**, is the **'method'** of the HTTP request. There are many different 'methods', and each 'method' indicates a different type of request. Here are a few of them:
* **GET** => Retrieve a resource.  
* **POST** => Create a resource.  
* **PATCH** (_or **PUT**, but **PATCH** is recommended_) => Update an existing resource.  
* **DELETE** => Delete a resource.  
* **HEAD** => Retreive the headers for a resource.

Of these, **GET** and **POST** are the most widely used. Generally, HTTP requests take the following format:

```
[http request method] [URL] [http version]  
	[list of headers]

	[request body]
```

Example:

		GET http://vermonster.com HTTP/1.1  
		Accept:text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8  
		Accept-Encoding:gzip,deflate,sdch
		Accept-Language:en-US,en;q=0.8  
		Connection:keep-alive  
		Host:vermonster.com  
		User-Agent:Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5)  
		AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1659.2 Safari/537.36  

#### HTTP Response

![HTTP Response](./images/http_response.jpeg "HTTP Response")

When a client sends a request, the server sends back a response; the standard format for this response is:

```
[http version] [status] [reason]  
[list of headers]

[response body]	# typically HTML, JSON, ...  
```

* HTTP version should be 1.1
* [Status Codes](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes) have standard meanings; here are a few.

|Code|Reason|
|:---|:-----|
|200| OK
|301| Moved Permanently
|302| Moved Temporarily
|400| Bad Request
|403| Forbidden
|404| Not Found
|500| Internal Server Error


## HTTP :: Lab

Break up into pairs! We're going to run a very simple HTTP Server, WEBRick, and look at the requests and responses we see.

1. If you haven't yet, fork and clone this repo.

2. Navigate into the root of the repo and run the following command:

	`ruby -run -e httpd . -p5000`  

	This will start the default Ruby webserver (in this case, WEBrick), and tell it (1) to serve up files found within the repo's root directory, and (2) to start listening for requests on port 5000 on your machine (aka  *'localhost'*).

3. Open Chrome Inspector and go to the Network tab.

4. Go to http://localhost:5000/stooges/moe_howard.html; this will cause the browser to make a GET request to that URL.

5. In pairs, draw the request/response flow (from the client to the server and back) on a whiteboard, and show it to an instructor! You should be able to answer the following questions, and also explain where the answer can be found within the HTTP request/response.

	* What are the resource (abstraction) and the corresponding representation (physical file)?
	* How does the browser know which server to get the resource from?
	* What is the resource path?
	* What HTTP Method is used in the Request?  
	* What kind of HTTP client is being used?  
	* What is the status of this request?
	* What kind of HTTP Server is being used?  
	<br>

6. Now, use another HTTP client, **curl** to view the resource and look at the HTTP info. The command to enter is:

	`curl -v http://localhost:5000/stooges/moe_howard.html`  

	Access another representation of this resource (an image) by `curl`ing the following URL: http://localhost:5000/stooges/moe_howard.jpg

7. Finally, use [hurl](https://www.hurl.it/) to access the above resource.

**Now you can debug HTTP with three different tools!**


## Additional Resources

- Three part video series about HTTP:  
	1. [Basic concepts of web applications, how they work and the HTTP protocol](https://www.youtube.com/watch?v=RsQ1tFLwldY)  
	2. [Know about HTTP URL](https://www.youtube.com/watch?v=ADQ_rhefgEk)  
	3. [Understanding HTTP Request Response Messages](https://www.youtube.com/watch?v=sxiRFwQ1RJ4)  

- [curl Command Line Utility](http://conqueringthecommandline.com/book/curl)

- [HTTP GET or POST](https://www.youtube.com/watch?v=kGOpY2J31pI)
- [9 uses for curl](http://localhost:5000/)
- [HTTP RFC](http://tools.ietf.org/html/rfc2616)
- [URL RFC](https://tools.ietf.org/html/rfc3986)
- [HTTP Status Codes](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes)
- [Media Types](http://en.wikipedia.org/wiki/Internet_media_type)
