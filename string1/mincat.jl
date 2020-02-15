"""
https://codingbat.com/prob/p105745
String-1 > minCat

Given two strings, append them together (known as "concatenation") and return the result.
However, if the strings are different lengths, omit chars from the longer string
so it is the same length as the shorter string. So "Hello" and "Hi" yield "loHi". The strings may be any length.

minCat("Hello", "Hi") → "loHi"
minCat("Hello", "java") → "ellojava"
minCat("java", "Hello") → "javaello"
"""
function mincat(a, b)
    len = min(length(a), length(b))
    return last(a, len) * last(b, len)
end

function test()
    @show(mincat("Hello", "Hi"))
    @show(mincat("Hello", "mike"))
    @show(mincat("mike", "Hello"))
    nothing
end

