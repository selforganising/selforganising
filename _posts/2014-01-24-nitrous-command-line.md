---
layout: post
title: Nitrous, GitHub, AppEngine and the UNIX command line
standfirst: 
author: DS
---

_Please note: this page is incomplete. More content will be added._

#####Run a simple web server to view the contents of your current working directory

    python -m SimpleHTTPServer 3000

(on port 3000. The `-m` option searches `sys.path` for the named module and runs the corresponding `.py` file as a script)

#####Clone a repository into your current working directory

    git clone https://github.com/GoogleCloudPlatform/appengine-helloworld-python.git

(in this case, the App Engine Hello World app in Python)

#####Run an App Engine application on this server

    dev_appserver.py --host=0.0.0.0 --port=3000 <path-to-directory>

#####Deploy an application to App Engine

    appcfg.py update <path-to-directory>

#####Fetch a file at a remote URL

    curl -O http://udacity-cs253.appspot.com/static/hw2.tgz

(in this case, CS253 Homework 2. The `-O` option copies the contents into a local file with the same name as the original.)

#####Unzip the contents of an archive file

    tar -xvf hw2.tgz

(`-x` extract, `v` verbose, `f` extract to a file)

