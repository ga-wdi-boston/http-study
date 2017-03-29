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
HTTP is a protocol for sending an receiving information on the world wide web.
The world wide web is a subset of the internet(all globally connected computers)
that uses HTTP to communicate. These terms are used interchangeably but are not
actually the same thing. The HTTP protocol was initially created for academic
exchange of information and was cooked up by Tim Berners Lee as a part of a
project for DARPA. It's initial conception was simply to transfer graphics, links,
and text- hence the term hypertext. The language used to tranfer the data is HTML
and that is why HTTP stands for hypertext transfer protocol. There is also HTTPS
which adds a layer of security to the transfer layer.
```

## Describe what a client is and what a server is

 What is a client and what is a server? How do they interact with each other?

```md
Clients request data from a server. Servers "serve" data to clients. In other words
servers service requests from clients - i.e. return responses from client requests.
```

## Describe the 4 most common HTTP verbs

What are the 4 most common HTTP verbs used when creating a RESTful API. How
would you use each?

```md
GET -  used to retrieve info
PUT - used to place information on the server such as a file
POST - used to process information on the server such as a form submission
DELETE - mostly self explanatory, but....it deletes things - opposite of PUT
```

## Describe what a Response is

What is a response? What does it contain? What are some common status codes in a
response and what do they mean?

```md
A response is what a client recieves from a server after making a request. In
it's simplest form it is an HTML page. There are many codes that can be passed
along to denote successes or failures. Such as a response 200 - indicating a
successful response to a client.
202 is accepted
205 is reset content

....the rest can be gotten off wikipedia for any curious.
```

## Make a curl request

Using curl, how would you get the content from Reddit.com?

```md
In the terminal type:
curl --request GET https://www.Reddit.com
```

## Describe the parts of a URL

List the parts of a URL and explain what each part is, in your own words. You'll
refer to this list often in the next few weeks, so it's important to keep it in
an easy-to-reference place.

```md
HTTP - protocol (could be https) - protocol used for communication
www.something.com - domain or the computer you are talking to - the reading
omits one crucial detail here, I think. The www portion of the domain which is
the server on the domain. WWW could be anything such as with maps.google.com.
This site is still a part of the google domain, but is actually hosted on a
different server as is denoted by the "maps" portion of th URL
www.domain.com: after the colon is the port. this portion is often omitted but
a clever hacker with some knowledge armed can use specific port information
to infiltrate poritons of sites they are not meant to access - maybe...if they
are good.
after the domain and port is the resource path. Think of this as any other file
path on a computer. This tells the server where the file the client wants is at
after that is the ? .... this is specific query information and once more, with
some pre knowledge can and sometimes was (not as common i am sure now) used to
trick a site into giving up information it wasn't supposed to. Often the browser
will fill in this portion and the user is often not responsible for knowing how
to formulate this portion of the URL.
```
