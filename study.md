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
A set of rules (protocol) for data to be sent back and forth on the web, such as between a client and a server.
Resources used: Given notes above.
```

## Describe what a client is and what a server is

 What is a client and what is a server? How do they interact with each other?

```md
A client is a computer or an application that has access to services by a server.
A server is a program or a device that provides services to clients.
A client sends a request to the server, and the server receives and responds back
to the client with data requested. Examples of clients include browsers and curl,
and examples of servers include application servers and web servers like Apache.
Resources used:
-https://code.tutsplus.com/tutorials/a-beginners-guide-to-http-and-rest--net-16340
-http://theydiffer.com/difference-between-a-client-and-a-server/
```

## Describe the 4 most common HTTP verbs

What are the 4 most common HTTP verbs used when creating a RESTful API. How
would you use each?

```md
GET: Read or retrieve data identified by the requested URL. Data retrieved should not be modified.
POST: Usually used to create new resources (in particular, subordinate resources).
PUT: Usually used to update or replace resources identified by the requested URL.
DELETE: Delete resources identified by the requested URL.
Resource: http://www.restapitutorial.com/lessons/httpmethods.html
```

## Describe what a Response is

What is a response? What does it contain? What are some common status codes in a
response and what do they mean?

```md
Responses are outputs by servers after processing requests from clients. Responses
contain resource representations, which are documents contained in the response body.
Common response codes:
200 OK: request was successful.
201 Created: request was successful and resources was successfully created (PUT or POST request)
404 Not Found: Resource was not found.
Resources: Given notes above.
```

## Make a curl request

Using curl, how would you get the content from Reddit.com?

```md
curl --request GET https://www.reddit.com
Resources: Given notes above.
```

## Describe the parts of a URL

List the parts of a URL and explain what each part is, in your own words. You'll
refer to this list often in the next few weeks, so it's important to keep it in
an easy-to-reference place.

```md
Example URL:
http://www.example.com:80/path/to/myfile.html?key1=value1&key2=value2#SomewhereInTheDocument
http:// - Protocol, or the set of rules that the browser must abide by.
www.example.com - Domain name, which indicates the server that it sends requests to
:80 - The port, which is used to access the resources provided by the server
/path/to/myfile.html - path to the resources provided by the server
?key1 = value1&key2=value2 - extra parameters sent to servers so that the servers can do extra things before returning the resource.
#SomewhereInTheDocument - Anchor, or a pointer to another part of the resource itself.
Resource: https://developer.mozilla.org/en-US/docs/Learn/Common_questions/What_is_a_URL
```
