"""
https://codingbat.com/prob/p139076
String-1 > atFirst

Given a string, return a string length 2 made of its first 2 chars.
If the string length is less than 2, use '@' for the missing chars.

atFirst("hello") → "he"
atFirst("hi") → "hi"
atFirst("h") → "h@"
"""
function atfirst(s)
    first2 = first(s, 2)
    return rpad(first2, 2, "@")
end

function test()
    @show(atfirst("hello"))
    @show(atfirst("hi"))
    @show(atfirst("h"))
    nothing
end

