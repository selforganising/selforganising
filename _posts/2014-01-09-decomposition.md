---
layout: post
title: Decomposition is key to learning to program 
standfirst: 
author: DS
---
It seems to me that when people are first learning to program, the most important skill that they don't necessarily have and need to acquire is the ability break a problem down into the smallest possible parts and to then solve them in a sensible order.

I am not sure that there is an easy way to generalise this skill in a way that will work in every context, but I think I can make a start by outlining a series of steps to take whenever tackling a problem for the first time.

Let me illustrate using a function that finds the factorial of a number in the Python programming language.

##### Whatever it is that you are trying to do, think of it as a function and give it a sensible name.

    factorial

`factorial` is a pretty sensible name for a function that returns the factorial of a number :-)

##### Work out the inputs to the function and give them sensible names.

    n

In general, descriptive names are better, but in the case of an integer, certain letters like `i`, `j`, `k` and `n` are so universally used to denote integers as to be quite descriptive enough. In this case, it should be clear that `factorial` takes a single whole number.

##### Write out the first line of the function definition, including the arguments.

    def factorial(n):

##### Add a test using the most simple argument values that you can think of.

    print factorial(0) == 1

There are many lovely ways to do testing in Python, and this is a bit--ahem--primitive, but for a beginning programmer, it's a good start. The wonders of `doctest` and `unittest` can be saved for another day.

##### Add a return value for your function using the value that your test is expecting.

    def factorial(n):
        return 1

    print factorial(0) == 1

##### Run your test and check that it passes.

    True

##### Think of a sensible name for your return value, add a variable with that name at the top of your function, assign to it your return value and return the variable instead of the value

    def factorial(n):
        total = 1
        return total

    print factorial(0) == 1

Assuming that we know that a factorial produces the product of a number and all the positive integers that precede it, then `total` is not a bad name for the return value. `product` might be a reasonable choice, too.

##### Run your test again and check that it passes.

    True

##### Add another test using the next most simple argument values that you can think of.

    print factorial(1) == 1

##### If necessary, extend your function definition, so that both your tests pass.

    def factorial(n):
        total = 1
        return total

    print factorial(0) == 1
    print factorial(1) == 1

In this case, it is not necessary to add any code.

    True
    True

##### Add another test using the next most simple argument values that you can think of.

    print factorial(2) == 2

##### Extend your function definition, so that all your tests pass.

    def factorial(n):
        total = 1
        if total > 1:
            total = n
        return total

    print factorial(1) == 1
    print factorial(1) == 1
    print factorial(2) == 2

There are other ways to attack this problem, but we know that we want to leave the total alone for n < 2. In any case, this attempt will work:

    True
    True
    True

##### Add yet another test using the next most simple argument values that you can think of.

    print factorial(3) == 6

##### Extend your function definition, so that all your tests pass.

This is one possible approach:

    def factorial(n):
        total = 1
        if total > 1:
            total = n
        if total > 2:
            total = n * n - 1
        return total

    print factorial(1) == 1
    print factorial(1) == 1
    print factorial(2) == 2
    print factorial(3) == 6

But, at this point (and quite possibly earlier) the student who is familiar enough with `while` loops will see that this approach is not going to generalise very well and will probably suspect that there is a better way to do this:

    def factorial(n):
        total = 1
        while n > 1:
            total = total * n
            n = n - 1
        return total

    print factorial(1) == 1
    print factorial(1) == 1
    print factorial(2) == 2
    print factorial(3) == 6

This, in fact, is a perfectly reasonable answer. All the tests will pass:

    True
    True
    True
    True

And further tests will confirm that this is a good general solution.

Now, there is no easy way to make the cognitive leap required to recognise that this solution requires a looping structure of the kind illustrated, but the purpose of this slow and deliberate approach is to get the to the point where the programmer has a suibable framework into which to think about suitable solutions.

At least if a student can get to the point where they have the skeleton of a solution and some passing tests, they can concentrate on working out the core of a problem without the baggage of an ill-defined function with misconceived arguments and spurious return values--which seem to be the bane of many novice programmers in the first few days of learning to program.

