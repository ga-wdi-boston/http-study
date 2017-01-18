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

## Additional Resources

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

In your own words, give a brief description of what HTTP is.

```md
HTTP is a set of rules that governs how clients and servers speak to each other to provide users with the information they request.  This information comes in the form of documents or pages, which are translated by web browsers on the client machines to translate complex files into readable, enjoyable content.  The user sends a request from their client machine to the server, which receives the request, parses the information that it needs to get the information the user wants, and assembles the response, which it sends back to the client.  Once at the client machine, the web browser translates the file into a readable format which can be displayed.
```

## Describe what a client is and what a server is

 What is a client is and what is a server? How do they interact with each other?

```md
A client is a computer that people interact with.  Normally it will have several input and output methods, like a screen, speakers, a keyboard and mouse.  This is a person's access point to the internet, which happens by using a web browser.  A server stores files, almost like a filing cabinet.  The interaction between client and server is how the internet works.  Instead of storing all possible information on every single client machine, one file that makes up a webpage can be stored on one server, and accessed repeatedly by many different people all at the same time.  The client issues a request for a webpage, which the server receives, interprets, and prepares a response to, which the client then receives and interprets so that it is visible to the user.
```

## Describe the 4 most common HTTP verbs

What are the 4 most common HTTP verbs used when creating a RESTful API. How
would you use each?

```md
1. GET - This issues a request from a client to a server for specific information, often the files stored at a specific hyperlink that is either clicked on or entered in the address bar.
2. PUT - This tells the server to create a new piece of information to store, specified by the URL in the request.  A PUT command could be issued when adding a new user's account to a shopping website, for example.
3. DELETE - This removes the piece of data at the provided URL.
4. POST - This alters in some way the piece of data specified by the URL.  For instance, in a run-tracking app, a POST request could alter the date and time of the specified run.
```

## Describe what a Response is

What is a response? what does it contain? What are some common status codes in a
response and what do they mean?

```md
A response is the information that the server sends to the client as the result of a request.  In addition to the code that creates the content that the user will see, a response contains a lot of meta-data about the transmission of the data, like whether it was successful or other information that the user may want to see about their request.  The most common response code is 404: File not found but there are others like 200: OK which shows that everything went as expected.
```

## Make a curl request

Using curl, how would you get the content from Reddit.com?

```md
curl --request GET https://www.reddit.com
```

## Describe the parts of a URL

List the parts of a URL and explain what each part is, in your own words. You'll
refer to this list often in the next few weeks, so it's important to keep it in
an easy-to-reference place.

```md
Protocol: The language the browser will use to communicate with the server.  Can be http or https or mailto or ftp.
Domain Name:  The name of the server from which the files are being requested.  Can also use IP address.
Port:  The "gate" used to access the resources on the webpage.  There are standard ones for http and https which can be omitted if using those.
Path:  The location of the file inside the specified domain.  In the past it was literal, but now the server can interpret it and it doesn't have to be literal.
Parameters:  Extra requests for the server to perform other options to the specified files.  Made up of key/value pairs.
Anchor:  Specifies where on the document to display.  Most common on wikipedia to show which section of an entry is currently being shown.
```
