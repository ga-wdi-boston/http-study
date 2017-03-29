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
The Hypertext Transfer Protocol (HTTP) is a  protocol or a system of rules allowing for communication on the Web. Web clients can talk to Web servers using this protocol.  HTTP is the underlying protocol used by the World Wide Web and this protocol defines how messages are formatted and transmitted, and what actions Web servers and browsers should take in response to various commands. For example, when you enter a URL (www.google.com) in your browser, this actually sends an HTTP command to the Web server directing it to fetch and transmit the requested Web page
```

## Describe what a client is and what a server is

 What is a client and what is a server? How do they interact with each other?
 A web client is an application that communicates with a web server. For example, when you click on a
 web page you are viewing the web client. When you click a button to retrieve some data (price, avalability, content, picture etc) you are then sending a request to the web server to retrieve the
 required data from the web server. This is then sent back to the web client and displayed in your
 browser
 A web server stores this data on the back end. For example, Amazon's servers store all the data about all their products on their servers. So when you click on an Amazon page for a particular item, the client sends a message to the web server to obtain the price, availability etc. So the Web client is just something that consumes data and provides interfaces to end users

```md
<!-- your answer here -->
```

## Describe the 4 most common HTTP verbs

What are the 4 most common HTTP verbs used when creating a RESTful API. How
would you use each?

```md
POST - When you submit forms, the browser typically issues a POST request. For example checking on hotel availability on hotel.com

GET - GET is the simplest type of HTTP request method. By default, the browser issues GET requests when you type a URL into the address bar. It is the one that browsers use each time you click a link or type a URL into the address bar. For example, just typing in www.cnn.com.  It instructs the server to transmit the data identified by the URL to the client. Data should never be modified on the server side as a result of a GET request.

PUT - A PUT request is used when you wish to create or update the resource identified by the URL

DELETE - should perform the contrary of PUT; it should be used when you want to delete the resource identified by the URL of the request.
```

## Describe what a Response is

What is a response? What does it contain? What are some common status codes in a
response and what do they mean?

```md
After receiving and interpreting a request message, a web server responds with an HTTP response message. The HTTP response should specify the content type of the body. This is done in the header, in the Content-Type field; for instance: Content/Type: application/json

Here are some common status codes and their meaning:
  200 OK
  This response code indicates that the request was successful.

  201 Created
  This indicates the request was successful and a resource was created. It is used to confirm success of a PUT or POST request.

  400 Bad Request
  The request was malformed. This happens especially with POST and PUT requests, when the data does not pass validation, or is in the wrong format.

  404 Not Found
  This response indicates that the required resource could not be found. This is generally returned to all requests which point to a URL with no corresponding resource.

  401 Unauthorized
  This error indicates that you need to perform authentication before accessing the resource.

  405 Method Not Allowed
  The HTTP method used is not supported for this resource.


```

## Make a curl request

Using curl, how would you get the content from Reddit.com?

```md
curl -v reddit.com
```

## Describe the parts of a URL

List the parts of a URL and explain what each part is, in your own words. You'll
refer to this list often in the next few weeks, so it's important to keep it in
an easy-to-reference place.

```md
Using an example http://www.example.com:80/path/to/myfile.html?key1=value1&key2=value2#SomewhereInTheDocument

http:// is the HTTP protocol. This indicates which protocol the browser must use.

The www.example.com is the DOMAIN NAME which dincates which web server is  been requested.

The :80 is the PORT number.

The /pathToMyFile.html is the path to where the web page is found on the web server.

?key1=value1&key2=value2 are extra parameters provided to the Web server. Those parameters are a list of key/value pairs separated with the & symbol. The Web server can use those parameters to do extra stuff before returning the resource

#SomewhereInTheDocument is an anchor to another part of the resource itself. An anchor represents a sort of "bookmark" inside the resource, giving the browser the directions to show the content located at that "bookmarked" spot.

```
