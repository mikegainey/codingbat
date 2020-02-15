"""
https://codingbat.com/prob/p108853
String-1 > extraEnd

Given a string, return a new string made of 3 copies of the last 2 chars of the original string.
The string length will be at least 2.

extraEnd("Hello") → "lololo"
extraEnd("ab") → "ababab"
extraEnd("Hi") → "HiHiHi"
"""
function extraend(str)
    return last(str, 2) ^3
end

function test()
    @show(extraend("Hello"))
    @show(extraend("ab"))
    @show(extraend("Hi"))
    nothing
end

