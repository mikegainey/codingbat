"""
https://codingbat.com/prob/p174148
String-1 > nTwice

Given a string and an int n, return a string made of the first and last n chars from the string.
The string length will be at least n.

nTwice("Hello", 2) → "Helo"
nTwice("Chocolate", 3) → "Choate"
nTwice("Chocolate", 1) → "Ce"
"""
function ntwice(str, n)
    return first(str, n) * last(str, n)
end

function test()
    @show(ntwice("Hello", 2))
    @show(ntwice("Chocolate", 3))
    @show(ntwice("Chocolate", 1))
    nothing
end
