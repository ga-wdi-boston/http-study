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
> unkown source

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

Use your favorite search engine and the provided readings to research and
respond to the following questions.

In your responses, be sure to cite any relevant sources you consulted in your
search. We ask you to write responses in your own words in order to see how you
process what you've read. Please do not respond with direct quotes from source
material. Instead, digest what you've read and repeat it in your own voice.

## Define HTTP

In your own words, give a breif description of what HTTP is.

```md
HTTP can be described with a number of different analogies. It is:

-a language
-a format
-a delivery system
-a standardized process

Essentially, HTTP is what facilitates the request-response cycle by which
clients and servers talk to each other, and through which most information
exchange on the Web takes place.

Sources:
study.md
http://symfony.com/, "Symfony and HTTP Fundamentals"
```

## Describe what a client is and what a server is

 What is a client is and what is a server? How do they interact with each other?

```md
A client is an application that initiates requests and receives responses. There
does't technically need to be a human involved directly, but the easiest example
of a client is the web browser that a human uses to access the Web. The human
types something into the browser (client), and the client turns that into a
request and sends it off. The server (which can refer either to an application
or the machine that the application runs on) is what receives the request and
generates a response to send back to the client.

So, clients and servers are essentially both computer programs, but one sends
requests and the other sends responses.

Sources:
study.md
```

## Describe the 4 most common HTTP verbs

What are the 4 most common HTTP verbs used when creating a RESTful API. How
would you use each?

```md
GET - use to get specific content from the server
PUT - use to create or update a resource on the server
DELETE - use to delete a resource from the server, as well as associated data
POST - also use to create or update a resource on the server

I'm not really clear on when to use PUT and when to use POST, although I
remember that in class we discussed using POST to send data from a form.

Sources:
study.md
http://code.tutsplus.com/, "A Beginner's Guide to HTTP and REST"
```

## Describe what a Response is

What is a response? what does it contain? What are some common status codes in a
response and what do they mean?

```md
A response is the message a server sends to a client when it receives a request.
It contains a header and a body. The body contains requested data or content,
while the header contains instructions, methods, and other information

The status code tells the client something about the respons.
200 means it was successful
201 confirms a successful PUT or POST
400 indicates something was wrong with the request, such as bad formatting
404 means the requested resource was not found.

Sources:
study.md
http://code.tutsplus.com/, "A Beginner's Guide to HTTP and REST"
```

## Make a curl request

Using curl, how would you get the content from Reddit.com?

```md
I did not have time to cover this material in depth, but here is my best shot:

curl --request GET https://www.reddit.com

Source:
study.md
```

## Describe the parts of a URL

List the parts of a URL and explain what each part is, in your own words. You'll
refer to this list often in the next few weeks, so it's important to keep it in
an easy-to-reference place.

```md
A URL consists of:

A protocol: the language in which requests for the resource should be made
A domain: where the resource is hosted
A port (often omitted):
A resource path: instructions for how to find the resource at the host domain
A query: what the server should do with the resource before returning it
An anchor: tells the browser what part of the incoming resource to show

Sources:
study.md
https://developer.mozilla.org, "What is a URL?"
```
