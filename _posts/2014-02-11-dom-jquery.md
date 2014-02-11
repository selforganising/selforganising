---
layout: post
title: JavaScript, jQuery, and the DOM
standfirst: 
author: DS
---

Task: add a jQuery handler to your blog.

#####Python vs JavaScript

A nice essay on [the differences between JavaScript and Python](https://blog.glyphobet.net/essay/2557).

#####Why JavaScript?

JavaScript was developed for the release of Netscape Navigator 2.0 in 1995 and was added to Microsoft Internet Explorer 3.0 the following year. It was originally pitched as a nice way to do form validation and was quickly adopted for implementing dynamic page elements, like dropdown menus (in the days when CSS did not have the capacity for this sort of thing). 

It was several years before JavaScript began to be widely used for populating an already-loaded web page with new content in what became know as AJAX (asynchronous JavaScript and XML) applications. Google launched gmail in 2004 and Google Maps the following year. The jQuery library, which made manipulation of web pages easier, was released in 2006. The Google V8 JavaScript engine, which greatly speeded up the execution of JavaScript, was released in 2008 with the first version of Google Chrome.

Many languages can be compiled to JavaScript, so it is possible to write web applications without using JavaScript, but no other language will actually run in a web browser without first being converted to JavaScript.

JavaScript is also used as a server language. Node.js was released in 2009 and has started to become widely adopted for building applications that manage data in real time, such as for gaming, online chat and remote monitoring.

#####What is jQuery?

jQuery is a library for manipulating the DOM (Document Object Model). The DOM is a convention for describing and manipulating the elements of an HTML document, which treats the document as a heirarchical tree with HTML tags as nodes in that tree.

There is a good summary of [how jQuery works](http://learn.jquery.com/about-jquery/how-jquery-works/) on the jQuery website.

#####How to use jQuery

As with using a frontend framework library like Twitter Bootstrap, link to a version of jQuery delivered from a CDN (such a [cdnjs](http://cdnjs.com/libraries/jquery/) and create a separate link to a local _application_ link. In order to reduce load times, link to both files at the bottome of your document:

        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
        <script src="/js/application.js"></script>
      </body>
    </html>
    
The application.js file should look something like this:

    $( document ).ready(function() {

        // code to follow

    });

#####The task

* Add the jQuery library to your blog.
* Create an _application.js_ file and link to it from the front page of your blog.
* Add an empty [_ready event_](http://api.jquery.com/ready/) to your _application.js_ file.
* In the _ready event_ loop, create a function to hide the text of each blog entry when the page first loads.
* In the _ready event_ loop, create a function that responds to a browser event (a click on a link or a button, say) by toggling the visibility of the text of each blog entry.




