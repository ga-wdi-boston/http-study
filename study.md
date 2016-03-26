# HTTP Study

Read this document entirely. Follow any links and study their content. Readings
and activities are **required** unless otherwise indicated.

## HTTP

HTTP is a protocol - a system of rules - that determines how documents are
transferred from one place to another. Among other things, it defines the format
of the messages passed between *clients* and *servers*.

"Clients" send *requests* and receive *responses*. Examples include browsers
(like Chrome, Safari, or Firefox) and other programs like
[`curl`](http://curl.haxx.se/docs/) and
[`wget`](http://www.gnu.org/software/wget/manual/wget.html).

"Servers" receive requests and send responses. Examples are more complex, since
there are different kinds of servers. There are application servers, which work
in Node or Ruby to generate documents using those languages, and there are web
servers like [Apache](http://httpd.apache.org/), [nginx](http://nginx.com/), and
[lighttpd](https://www.lighttpd.net). The word "server" is also used to describe
the machine that these programs run on. In this document, the latter is what we
mean when we say "server", as in this diagram:

> ![http-xkcd](https://cloud.githubusercontent.com/assets/388761/12621764/0ffb527e-c4f0-11e5-87ae-d597e3835fcd.png)
> [Symfony and HTTP Fundamentals (The Symfony Book)](http://symfony.com/doc/current/book/http_fundamentals.html)

1.  A client sends a request to a server.
1.  The server processes the request.
1.  The response gets sent back to the client.
1.  The client processes the response.

## URLs

Which server is the request sent to? How does the server know what to respond
with? Both of these questions are answered by *uniform resource locator (URL)*.

> ![URL](https://cloud.githubusercontent.com/assets/388761/12622184/2c0143dc-c4f2-11e5-84af-55f723dd6639.png)
> unkown source

## HTTP Verbs

A request has two parts: a URL and a verb. A request without both is incomplete.

By default, the browser issues GET requests when you type a URL into the address
bar and press `enter`. When you submit forms, the browser typically issues a
POST request.

-   [A Beginner’s Guide to HTTP and REST - Envato Tuts+ Code Tutorial](http://code.tutsplus.com/tutorials/a-beginners-guide-to-http-and-rest--net-16340)
-   [HTTP Methods for RESTful Services](http://www.restapitutorial.com/lessons/httpmethods.html)

## Make a Request

Make a request using the browser. Go to [Google](https://www.google.com). When
you clicked this link, the browser made a GET request to Google's server. We
often describe requests like this:

```txt
GET https://www.google.com/
```

If we know we're working with a particular server, we might shorten abbreviate
it as follows. For example, if Google had API documentation that described
requests you could make to it's server, that documentation might say instead:

```txt
GET /
```

In other words, API docs often only describe the URI instead of the full URL.

The response your browser receives from Google is an HTML document the browser
parses and renders. What would happen if you made the same get request outside
of the browser?

Try this in your terminal:

```sh
curl --request GET https://www.google.com
```

What did you see?

## Responses & Resources

Servers send responses, and those responses contain resource representations.

Technically, the term "resource" refers to an abstraction that your application
uses; depending on what the application does, a resource might be a 'Car', a
'Person', a 'User', or an 'Order Cart'.

A single resource can be represented in multiple different ways by the server,
including a HTML, JSON, PDF files, and images. What we really mean when we say
"resource" above is a specific representation of a resource.

You may think of resources as the documents that are returned (usually HTML or
JSON) as part of the response body.

## Response Statuses

What are HTTP status codes?

-   [List of HTTP status codes](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes)
-   [HTTP Status Codes in a Nutshell](https://twitter.com/stevelosh/status/372740571749572610)

## Videos

1.  [Basic concepts of web applications, how they work and the HTTP protocol](https://www.youtube.com/watch?v=RsQ1tFLwldY)
1.  [Know about HTTP URL](https://www.youtube.com/watch?v=ADQ_rhefgEk)
1.  [Understanding HTTP Request Response Messages](https://www.youtube.com/watch?v=sxiRFwQ1RJ4)

## Additional Resources (Optional)

-   [Conquering the Command Line: `curl`](http://conqueringthecommandline.com/book/curl)
-   [HTTP Status Codes](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes)
-   [Media Types](http://en.wikipedia.org/wiki/Internet_media_type)

## Questions

Use your favorite search engine and the provided readings to research and respond to the following questions.

In your responses, be sure to cite any relevant sources you consulted in your search. We ask you to write responses in your own words in order to see how you process what you've read. Please do not respond with direct quotes from source material. Instead, digest what you've read and repeat it in your own voice.

## Define HTTP

In your own words, give a breif description of what HTTP is.

```md
HTTP is a protocol that allows web clients (like browsers) and user clients (like cURL) to communicate requests to web servers and recieve responses in a shared language that both sides can understand.
(sources:
this document
https://www.youtube.com/watch?v=RsQ1tFLwldY)
```

## Describe what a client is and what a server is

 What is a client is and what is a server? How do they interact with each other?

```md
A client is a browser or program on the user end (like chrome or curl).  A server can refer to a program that provides service for the client like providing data or the physical machine that the program runs on.

When they interact, the client sends a request for a resource (like a web page). The server recieves that request and creates a response composed of the requested material either statically (the response material is already prepared) or dynamically (the server has to add to the response material on the spot).  The server then sends that response back to the client.  This process is faciliated by protocols such as HTTP which allows the client and server to transfer requests/responses in a shared language.
(sources:
https://www.youtube.com/watch?v=RsQ1tFLwldY)
```

## Describe the 4 most common HTTP verbs

What are the 4 most common HTTP verbs used when creating a RESTful API. How would you use each?

```md
The four most common HTTP verbs used when creating a RESTFful API are GET, POST, DELETE, and PUT.

GET  would be used to instruct the server to get a resource.

POST would be used to create a new resource to send to the server that the server would then process.

DELETE would be used to delete a resource. (I don't quite understand why you would want to use this verb)

PUT would be used to update or add to an existing resource for a server to process.

(sources:
http://www.restapitutorial.com/lessons/httpmethods.html
http://stackoverflow.com/questions/256349/what-are-the-best-common-restful-url-verbs-and-actions
https://www.youtube.com/watch?v=sxiRFwQ1RJ4
http://restcookbook.com/HTTP%20Methods/put-vs-post/
(to understand idempotency, still somewhat confused on this too)
http://www.restapitutorial.com/lessons/idempotency.html)
```

## Describe what a Response is

What is a response? what does it contain? What are some common status codes in a response and what do they mean?

```md
A response is a resource created by the server at the request of the client that is composed of what the client requested.  That composition is usually dependant on what the application that the client was interacting with does.

One of the most common/recognizable codes is 404 indicating that the client was able to reach the server but was attempting to access a non-functional link.  This would be an example of client side error.

Another common code is 503 which means a server is inaccessible because it is recieving too many requests or is down for maintenance.  This would be an example of an error on the server's part.

Other error categories include 1xx which means the request status is ongoing, 2xx which means the request went through and was return successfully, and 3xx which means the client has to do something else to allow the request to go through.
  
(source:
this document
https://en.wikipedia.org/wiki/List_of_HTTP_status_codes)
```

## Make a curl request

Using curl, how would you get the content from Reddit.com?

```md
curl --request GET https://www.reddit.com/
```
