---
layout: post
title: Decomposing a problem using recursion
standfirst: 
author: DS
---
Following on from [Decomposition is key to learning to program](/2014/01/09/decomposition.html), here is the same problem solved using recursion.

#### Find the factorial of a number

_n!: the  product of all positive integers less than or equal to n._

##### Give the function a sensible name

    factorial

##### Work out the inputs to the function and give them sensible names

    n

##### Write out the first line of the function definition, including the arguments

    def factorial(n):

##### Decide on the _base case_

    n == 0

All recursive solutions require a _base case_, where computation stops and a result is returned. Without a _base case_ recursion never stops and no solution is ever returned.

The question of what constitutes the _base case_ is crucial and it will vary from problem to problem. The _base case_ is the set of input values for which the least amount of computational effort is required. In the case of factorial, the first member of the _factorial sequence_ is _n! = 1_,  where `n == 0`. This, then, is an obvious candidate for the _base case_. 

##### Add a test for the _base case_

    print factorial(0) == 1

##### Add a return value for your function using the value that your test is expecting

    def factorial(n):
        if n == 0:
            return 1

    print factorial(0) == 1

##### Run your test and check that it passes

    True

##### Decide on the next case

    n == 1

In the case of a function like `factorial` that computes a number that is part of a sequence, it is easy to decide on the each successive test case. In this case, the next value is _n! = 1_, where `n == 1`.

##### Add another test using the next case

    print factorial(1) == 1

##### Decide on whether you are ready to compute a recursive solution

Sometimes more than one base case is required before the general recursive solution can be found. But in this case the problem is a simple one: 

_For any value of n, multiply n by each predecessor until you reach the base case._

##### Sketch out the framework of a possible solution

    def factorial(n):
        if n == 0:
            return 1
        return <some function of n> <some operator> factorial(<some successor to n>)

A general recursive solution often requires that _&lt;some function of n&gt;_ is combined with _&lt;some operator&gt;_ to a recursive call to the original function with _&lt;some successor to n&gt;_. 

This schema will not work in every case, but is a sensible starting point.

This is the heart of recursive programming. You are calling a function _within the function itself_. That is, you are calling it _recursively_.

This is a very important and powerful technique in programming.

##### Attempt to fill in the blanks

This is where the big intuitive leap is required. 

    n! = n * (n-1) * (n-2) * ... * 3 * 2 * 1

From the form of the solution to n!, probably the first thing to see clearly is that:

    <some operator of n> = *

The second thing to see is that:

    <some function of n> = n

This comes from the first term in the series.

The final thing to see is that:

    <some successor to n> = n - 1

Which should be clear from the way in which each term of n! is one less than its predecessor.

##### Now attempt a general solution to the problem

    def factorial(n):
        if n == 0:
            return 1
        return n * factorial(n - 1)

    print factorial(0) == 1
    print factorial(1) == 1

##### Run the tests

    True
    True

##### Add more test cases

    print factorial(0) == 1
    print factorial(1) == 1
    print factorial(2) == 2
    print factorial(3) == 6
    print factorial(4) == 24

##### Run the tests

    True
    True
    True
    True
    True

Which confirm that this is probably a good general solution.

