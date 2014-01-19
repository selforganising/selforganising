---
layout: post
title: Everything as a stream
standfirst: 
author: DS
---
Following on from [Decomposing a problem using recursion](/2014/01/17/recursion.html), here are some more thoughts on recursion and related matters.

It is fascinating seeing the solutions that novice programmers discover for what, to a practiced eye, can look like quite simple problems. 

A good example (from [Udacity's Intro to Computer Science](https://www.udacity.com/course/viewer#!/c-cs101/l-48683810/e-48740153/m-48735059)) is the task of removing markup from a document and returning just the text as a list of words. The almost universal tendancy seems to be to create loops within loops, involving scanning the source document back and forth, discarding snippets of markup, and creating snippets of text in order to splice them back into some output variable.

But this problem can also be solved by seeing the text as a continuous stream of characters, being read sequentually, and being transformed character by character. The resulting function is neat and short and legible, but apparently unintelligible to people unfamiliar with this way of doing things.

This idea that the world can be seen as made up of streams--of characters, of numbers, of things in general--on which a series of simple operations can be performed in strict sequence led John McCarthy to create, in 1958, the [LISP programming language](http://en.wikipedia.org/wiki/Lisp_(programming_language)).

Powerful as the idea of everything-as-a-stream is, it does not seem to come naturally to us. We are more inclined to break down problems in a heirarchical way, as processes within processes. Perhaps that is why several centuries separate the planetary hypotheses of Ptolemy and Copernicus. 

##### Steps

1. Visualise the input to your function as a single stream, broken down into its smallest elements.

2. Break down your function into a series of transformations, performed separately. If your function requires more than one transformation, break it into separate functions with the output of the first function being fed into the input of the next function. 

3. See each element of your input as capable of either producing a given output or of changing the current state of your function. In simple cases, this is not necessary, but try to identify which elements might transform the state of the function.

This is probably too abstract to make much sense of without a specific example.

##### An example: Remove the markup from a string and return the text as a list of words

1. Visualise the string of markup as a stream of characters.

2. There are two transformations: First transform the string of markup into a string stripped of markup, then transform the output string into a list of words.

3. The characters '<' and '>' change the state of the system. After the character '<' is encountered, no characters should be copied to output. After the '>' is encountered, copying should resume.

The solution to this problem offered by Udacity, mentioned at the top of this document, is actually nothing like this. Here is their solution:

    def remove_tag(string):
        start = string.find('<')
        while start != -1:
            end = string.find('>', start)
            string = string[:start] + " " + string[end + 1:]
            start = string.find('<')
        return string.split()

This is the solution I prefer:

    def remove_tags(markup):
        string = ''
        recording = True
        for ch in markup:
            if ch == '<':
                recording = False
            elif recording:
                string += ch
            elif ch == '>':
                recording = True
                string += ' '
        return string.split()

The first solution certainly has fewer lines, but arguably it is harder to read and harder to visualise. In the second solution, the variable `recording` is intended to convey the idea of a recording head that is examining the input stream. When the recording head encounters a `<` it stops _recording_ the input stream and when it encounters a `>`, it resumes again. 

Finally, here is an unpythonic recursive solution:

    def strip_tags(markup, recording):
        if markup == '':
            return ''
        if markup[0] == '<':
            return strip_tags(markup[1:], False)
        if recording:
            return markup[0] + strip_tags(markup[1:], True)
        if markup[0] == '>':
            return ' ' + strip_tags(markup[1:], True)
        return strip_tags(markup[1:], recording)

    def remove_tags(markup):
        return strip_tags(markup, recording=True).split()

Note that the problem has now been split up into two parts, to reflect the two separate transformations of first stripping the markup from the input string and then transforming the string into a list of words.

For a sufficiently long input string, the Python call stack will overflow (to check the limit, try `sys getrecursionlimit()` in the Python shell), but  in a purely functional language with [tail call optimisation](http://en.wikipedia.org/wiki/Tail_call) and without [mutability](http://en.wikipedia.org/wiki/Immutable_object), this would be a sensible solution.

