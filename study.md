# HTTP Study

Read this document entirely. Follow any links and study their content. Readings
and activities are **required** unless otherwise indicated.

## HTTP Required Reading

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
>
> [Symfony and HTTP Fundamentals (The Symfony Book)](http://symfony.com/doc/current/book/http_fundamentals.html)

1.  A client sends a request to a server.
1.  The server processes the request.
1.  The response gets sent back to the client.
1.  The client processes the response.

## URLs

Which server is the request sent to? How does the server know what to respond
with? Both of these questions are answered by *uniform resource locator (URL)*.

> ![URL](https://cloud.githubusercontent.com/assets/388761/12622184/2c0143dc-c4f2-11e5-84af-55f723dd6639.png)
>
> unknown source

Study each part of a URL using the [Mozilla Developer Network
Documentation](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/What_is_a_URL).

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

If we know we're working with a particular server, we might abbreviate
it as follows. For example, if Google had API documentation that described
requests you could make to its server, that documentation might say instead:

```txt
GET /
```

In other words, API docs often only describe the URI instead of the full URL.

The response your browser receives from Google is an HTML document the browser
parses and renders. What would happen if you made the same GET request outside
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
including HTML, JSON, PDF files, and images. What we really mean when we say
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

## Additional Resources

-   [Conquering the Command Line: `curl`](http://conqueringthecommandline.com/book/curl)
-   [Media Types](http://en.wikipedia.org/wiki/Internet_media_type)

## Questions

Use your favorite search engine and the provided readings to research and
respond to the following questions.

In your responses, be sure to cite any relevant sources you consulted in your
search. We ask you to write responses in your own words in order to see how you
process what you've read. Please do not respond with direct quotes from source
material. Instead, digest what you've read and repeat it in your own voice.

## Define HTTP

In your own words, give a brief description of what HTTP is.

```md
HTTP is the hyper text transfer protocol, and the inclusion of "HTTP" at the beginning of the URL lets the browser know this is the protocol to use.  Other examples of protocol include "mailto:" for mail clients and "ftp" for the transerring of files.
```

## Describe what a client is and what a server is

 What is a client and what is a server? How do they interact with each other?

```md
A client is what sends a request to a server and waits for a response.  An example of a client may be a computer that someone uses a browser on to access a web page.  A server listens and received request, and then sends a response to the client.  A server is analagous to a computer that contains the information being accessed by the client.

Sources:
Required readings
http://softwareengineering.stackexchange.com/questions/206254/difference-between-a-server-and-a-client


```

## Describe the 4 most common HTTP verbs

What are the 4 most common HTTP verbs used when creating a RESTful API. How
would you use each?

```md

1.) POST - used to create new resources.
2.) GET - used to read a representation of a resource.  GET verbs are used to read data.
3.) PUT - used to update and to create a resource.
4.) PATCH - used for the modification of a resource.

There is also a fifth comment verb:

5.) DELETE - used to delete a resource.

Sources: Required readings.
```

## Describe what a Response is

What is a response? What does it contain? What are some common status codes in a
response and what do they mean?

```md
A response is what a server sends back to a client in response to a request.  A response will include a status code, which provides and indicator that the request was processed, and the outcome of it.  Common status codes include the following:

100-199
SRCs provide confirmation that a request was received and is being processed. (silent)
100	This is good. The request was completed and the process can move along.
101	Request to switch protocols (like from HTTP to FTP) was accepted.
200-299
SRCs report that requests were performed successfully. (silent)
200	It simply means all is OK. What the client requested is available
201	This means a new address was successfully created through a CGI or posting form data.
202	The client's request was accepted, although not yet acted upon.
203	The accepted information in the entity header is not from the original server, but from a third party.
204	There is no content in the requested click. Let's say you click on an image map section not attached to a page. This allows the server to just sit there waiting for another click rather than throwing an error.
205	This allows the server to reset the content returned by a CGI.
206	Only partial content is being returned for some reason.
300-399	Request was not performed, a redirection is occurring.(usually silent)
300	The requested address refers to more than one entity. Depending on how the server is configured, you get an error or a choice of which page you want.
301	Page has been moved permanently, and the new URL is available. You should be sent there by the server.
302	Page has been moved temporarily, and the new URL is available. You should be sent there by the server.
303	This is a "see other" SRC. Data is somewhere else and the GET method is used to retrieve it.
304	This is a "Not Modified" SRC. If the header in the request asks "If Modified Since", this will return how long it's been since the page was updated.
305	This tells the server the requested document must be accessed by using the proxy in the Location header (i.e. ftp, http.)
400-499	Request is incomplete for some reason.
400	There is a syntax error in the request. It is denied.
401	The header in your request did not contain the correct authorization codes. You don't get to see what you requested.
402	Payment is required. Don't worry about this one. It's not in use yet.
403	You are forbidden to see the document you requested. It can also mean that the server doesn't have the ability to show you what you want to see.
404	Document not found. The page you want is not on the server nor has it ever been on the server. Most likely you have misspelled the title or used an incorrect capitalization pattern in the URL.
405	The method you are using to access the file is not allowed.
406	The page you are requesting exists but you cannot see it because your own system doesn't understand the format the page is configured for.
407	The request must be authorized before it can take place.
408	The request timed out. For some reason the server took too much time processing your request. Net congestion is the most likely reason.
409	Conflict. Too many people wanted the same file at the same time. It glutted the server. Try again.
410	The page use to be there, but now it's gone.
411	Your request is missing a Content-Length header.
412	The page you requested has some sort of pre-condition set up. That means that If something is a certain way, you can have the page. If you get a 412, that condition was not met. Oops.
413	Too big. What you requested is just too big to process.
414	The URL you entered is too long. Really. Too long.
415	The page is an unsupported media type, like a proprietary file made specifically for a certain program..
500-599	Errors have occurred in the server itself.
501	What you requested of the server cannot be done by the server. Stop doing that you!
502	Your server has received errors from the server you are trying to reach. This is better known as the "Bad Gateway" error.
503	The format or service you are requesting is temporarily unavailable.
504	The gateway as timed out. This is a lot like the 408 error except the time-out occurred specifically at the gateway of the server.
505	The HTTP protocol you are asking for is not supported.

Sources:
Required readings
http://www.htmlgoodies.com/beyond/reference/article.php/3472941/Server-Response-Codes.htm

```

## Make a curl request

Using curl, how would you get the content from Reddit.com?

```md
Via the command line, enter the following: "curl www.reddit.com"

Sources: Required readings.

```

## Describe the parts of a URL

List the parts of a URL and explain what each part is, in your own words. You'll
refer to this list often in the next few weeks, so it's important to keep it in
an easy-to-reference place.

```md
-Protocol (example: "http://"")
-Domain Name (example: "www.reddit.com")
-Port (example ":85")
-Path to file (example: "path/to/file")
-Parameters (example: "?key1-=test1&key2=test2")
-Anchor (example: #DocumentLocation)

Sources: Required readings.

```
