"""
https://codingbat.com/prob/p172063
String-1 > extraFront

Given a string, return a new string made of 3 copies of the first 2 chars of the original string.
The string may be any length. If there are fewer than 2 chars, use whatever is there.

extraFront("Hello") → "HeHeHe"
extraFront("ab") → "ababab"
extraFront("H") → "HHH"
"""
function extrafront(str)
    front = first(str, 2)
    return front^3
end

function test()
    @show(extrafront("Hello"))
    @show(extrafront("ab"))
    @show(extrafront("H"))
    nothing
end

