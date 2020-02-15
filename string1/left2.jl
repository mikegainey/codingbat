"""
https://codingbat.com/prob/p197720
String-1 > left2

Given a string, return a "rotated left 2" version where the first 2 chars are moved to the end.
The string length will be at least 2.

left2("Hello") → "lloHe"
left2("java") → "vaja"
left2("Hi") → "Hi"
"""
function left2(str)
    return str[3:end] * first(str, 2)
end

function test()
    @show(left2("Hello"))
    @show(left2("julia"))
    @show(left2("Hi"))
    @show(left2("Michael"))
    nothing
end

