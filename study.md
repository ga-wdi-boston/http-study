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

In your own words, give a breif description of what HTTP is.

```md
HTTP is a method used to communicate between clients and servers.  It is needed to send and receive documents on the internet.  The HTTP messages consists of a heading and body where HTTP verbs are used to give details of a request (e.g. GET or PUT).  Included in such messages is the HTTP verb (e.g. GET), the host, the type of file being requested, and the user-agent.  Both the client and the server communicate in this way.

Source: http://symfony.com/doc/current/introduction/http_fundamentals.html
Source: http://code.tutsplus.com/tutorials/a-beginners-guide-to-http-and-rest--net-16340
```

## Describe what a client is and what a server is

 What is a client is and what is a server? How do they interact with each other?

```md
The HTTP client is what initiates the conversation with the server.  An example of an HTTP client would be the Google Chrome Browser.  When attempting to view a website, the client utilizes the GET method to receive information (e.g. HTML files).  Then, the server, which stores files to be accessed by a client, prepares the HTML of a webpage and offers the files (e.g. HTML file) to the client.

Source: https://www.tutorialspoint.com/http/http_overview.htm
Source: http://symfony.com/doc/current/introduction/http_fundamentals.html
```

## Describe the 4 most common HTTP verbs

What are the 4 most common HTTP verbs used when creating a RESTful API. How
would you use each?

```md
1 GET - The GET method is used to gain access to a file on the server.  For instance, this takes place when trying to view a webpage.

2. POST - The POST method is used when adding something new to a server.  One example is submitting a form which will be stored on the server.

3. PUT - The PUT method is utilized to update something on a serve.  It is typically used with APIs

4. DELETE - As indicated in the name, the DELETE method asks the server to delete a resource.  Like the PUT method, it is typically used with APIs.

Source: http://code.tutsplus.com/tutorials/a-beginners-guide-to-http-and-rest--net-16340
```

## Describe what a Response is

What is a response? what does it contain? What are some common status codes in a
response and what do they mean?

```md
A response is how the server responds to a request.  The status code offers information as to how the server is responding to a client's request. The first digit of a status code is especially important because it describes the status type.  For instance, a status code begining with 1 indicates that the server has received a request and is continuing with a process.  Status codes starting with 2 state that the server has received a request by the client and that there were no errors (i.e. it was processed).  When a status code begins with 3, it means that the client must respond before proceeding.  One instance of a status code starting with 3 is URL redirection.  The status code begining with the number four indicates that there is a client error (i.e. not the server).  While these are four categories, additional digits in the server response offers more detailed information.

Source: https://en.wikipedia.org/wiki/List_of_HTTP_status_codes
```

## Make a curl request

Using curl, how would you get the content from Reddit.com?

```md
curl --request GET https://curl.reddit.com

This curl request communicates with a server to obtain a requested resource (e.g. HTML file).  Typing the code above into the terminal would achieve this.

Source: https://curl.haxx.se/docs/httpscripting.html

```

## Describe the parts of a URL

List the parts of a URL and explain what each part is, in your own words. You'll
refer to this list often in the next few weeks, so it's important to keep it in
an easy-to-reference place.

```md
The parts of a URL are best illustrated with an example:

http://www.facebook.com:40/path/toprofile.html?key1=value#anchor

http - http:// is the protocol.  It states the protocol that must be used by the browser to communicate with a server.

www.facebook.com  - this is the domain name for a website and it is the location of the server.

:40 - This is the port of the url and it describes the manner in which to access a web server.

/path/toprofile.html - This is used to indicate the path of the desired resource on a server.  It is thought of as the location of the file being accessed.

?key1=value - This represents the parameter of the url (n.b. there can be multiple).  As indicated in this example, it is a key value pair which allows the server to complete additional actions before responding.

#anchor - this represents a specific location on a webpage.  For instance, when viewing a large webpage, anchor links are used to jump down the page to the desired content.

Source: https://developer.mozilla.org/en-US/docs/Learn/Common_questions/What_is_a_URL
```
