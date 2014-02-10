---
layout: post
title: Introduction to Zurb Foundation and Twitter Bootstrap 
standfirst: 
author: DS
---

####Task: style your blog using a frontend framework

#####Download the frameworks

Anywhere on Nitrous (or on your own desktop):

    mkdir frameworks
    cd frameworks
    curl -O https://gist.github.com/sofer/8902360/raw/8cc1c1aec43b9081792fff567b95a2cd5803531d/foundation.html
    curl -O https://gist.github.com/sofer/8906628/raw/4c74d5dd82aacf9ff515486780c7c2fdc2f90e97/bootstrap.html 
    python -m SimpleHTTPServer 3000

#####Look at the source code

Use Chrome's Developer tools ( _"Inspect element"_ in the context menu) to investigate the relationship between a document's HTML and the CSS.

Pay particular attention to the headers and to the `row` and `columns` _div_s in Foundation and the `row` and `col-md-4` _div_s in Bootstrap.

In _foundation.html_, what is the significance of `foundation.min.css`, `modernizr.min.css`, `jquery.min.js` and `foundation.min.js`?

In _bootstrap.html_, what is the significance of `bootstrap.min.css`, `bootstrap-theme.min.css`, `jquery-1.10.2.min.js` and `bootstrap.min.js`.

Where are these files being served from? Does their location on the page matter? What is a `protocol-relative path` and why would you want to use one? 

#####Take a look at the online docs

* [Bootstrap](http://getbootstrap.com/css/)
* [Foundation](http://foundation.zurb.com/docs/components/grid.html)

Pay particular attention to the way grids are laid out. Ignore anything that you do not understand after the second or third reading. A lot of the details are really not necessary to get the gist of how these frameworks work.

#####Edit the source code

Play with the two files and get a feel for how they work.

#####Decide which framework you prefer

You may want to try a Google search for e.g. _foundation vs bootstrap_.

#####Finally, style your blog using one of the two frameworks

For the end-of-day review:

* Which framework did you prefer and why?
* How does your blog now look?
