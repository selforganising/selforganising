---
layout: post
title: A quick introduction to the UNIX command line
standfirst: 
author: DS
---

#####Where am I?

    pwd

_"Print Working Directory"_

#####What's in my current directory?

    ls

_"LiSt"_

#####Show me hidden files, as well

    ls -a

#####And show me details of each file

    ls -l

#####Show me both details and hidden files

    ls -al

#####Make a new directory called _things_

    mkdir things

_"MaKe DIRectory"_

#####Change to the _things_ directory

    cd things

_"Change Directory"_

#####Go up a directory level

    cd ..

#####Return to my home directory

    cd ~

#####Create a new file with nothing in it

    touch one.txt

#####Make a copy of it

    cp one.txt two.txt

_"CoPy"_

#####Change its name

    mv one.txt three.txt

_"MoVe"_

#####And delete  it

    rm three.txt

_"ReMove"_

#####Remove all files and folders without prompting and with no chance of recovery

    rm -rf

_"ReMove Recursively and Forcefully"_. Don't do this.

#####Put some text into a file

    echo "hello" > greet.txt

#####And display the contents

    cat greet.txt

_"conCATenate and list"_

#####Cycle through previously-entered commands

    _Use the up and down arrow keys_

#####Edit a previously-entered command

    _Use the left and right arrow keys_

#####Enter the Python shell

    python

#####Leave it again

    Ctrl-d

or 

    exit()

#####Install the beautifulsoup4 Python module

    pip install --user beautifulsoup4

(_--user_ is needed when you do not have full access rights to read and write files) 
    
