"""
https://codingbat.com/prob/p138183
String-1 > lastChars

Given 2 strings, a and b, return a new string made of the first char of a and the last char of b,
so "yo" and "java" yields "ya". If either string is length 0, use '@' for its missing char.

lastChars("last", "chars") → "ls"
lastChars("yo", "java") → "ya"
lastChars("hi", "") → "h@"
"""
function lastchars(s1, s2)
    s1 = s1 == "" ? "@" : s1 # pretty nifty, eh?
    s2 = s2 == "" ? "@" : s2
    return first(s1) * last(s2)
end

function test()
    @show(lastchars("last", "chars"))
    @show(lastchars("yo", "julia"))
    @show(lastchars("hi", ""))
    nothing
end

