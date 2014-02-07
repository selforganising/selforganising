---
layout: post
title: App Engine development hints
standfirst: 
author: DS
---

#####Run the development server

    dev_appserver.py --host=0.0.0.0 <path-to-app>

Your application will now run on the default port, 8080

#####A quick way of clearing all your test data

    dev_appserver.py --clear_datastore=yes <path-to-app>

#####A quick way to write debugging information to the command line

At the top of your application file:

    import logging

And then at any point in your code:

    logging.info("<any string here>")

