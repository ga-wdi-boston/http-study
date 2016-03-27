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
<!-- hyper text transfer protocl
rules for transferring information between servers and clients through the internet.
it made sense to me to look at it like as being both the language and grammar rules of communication, like if i want to talk to another human being i need to use the protocols of using the same language AND rules of the language. Even in the same language someone that breaks grammar rules and speaks in a slang you aren't familiar in might make no sense, even if it's still in the same languge.
 -->
```

## Describe what a client is and what a server is

 What is a client is and what is a server? How do they interact with each other?

```md
<!--
a client is something like a web browser like chrome etc, something that GETs information from a server through protocols
and  allows the user to read it, like seeing a webpage instead of a ton of files of different code

a server is the machine storing the information we send our requests to. they receives requests from the client
and send responses back to the client.

the internet is where these exchanges are transferring between and taking place and https is a common type of protocols that these interactions are operating under.
your answer here -->
```

## Describe the 4 most common HTTP verbs

What are the 4 most common HTTP verbs used when creating a RESTful API. How would you use each?

```md
<!-- CRUD:
POST ---- Create
GET ----- Read  --get resources and read those files, like opening an html page
PUT ----- Update -i understood it to be like post, but updating exisiting information
DELETE -- Destory

 -->
```

## Describe what a Response is

What is a response? what does it contain? What are some common status codes in a response and what do they mean?

```md
<!--
a response is a literally a response from the server, sent to the client, in response to the clients request.

so curl https://reddit.com/ would get me the contents of the server with that url with that identification.
responses are coded into, i think 5 classes that classify the types of responses into things like 1xx informational (information on what you're doing along a process like changing information on a server with a post request) 2xx success (showing success in creating or managing resources etc) 3xx redirection (redirecting you to other servers through different URLs) and 4xx and 5xx being client and server errors respectfully. it seems like the most common of those would be somewhat obvious, like you may get the well-known 404 not found error if you mistype a url or a 5xx error in trying to access a sever you don't have permission to.a
your answer here -->
```

## Make a curl request

Using curl, how would you get the content from Reddit.com?

```md
<!-- curl https://reddit.com/

is that it? I thought it would be something like curl GET /https://www.reddit.com/ or something like that but it seems like just curl and the url does will get you the content of the url and -->
```
