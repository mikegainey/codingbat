"""
https://codingbat.com/prob/p142247
String-1 > without2

Given a string, if a length 2 substring appears at both its beginning and end, return a string without the substring
at the beginning, so "HelloHe" yields "lloHe". The substring may overlap with itself, so "Hi" yields "".
Otherwise, return the original string unchanged.

without2("HelloHe") → "lloHe"
without2("HelloHi") → "HelloHi"
without2("Hi") → ""
"""
function without2(str)
    if length(str) < 2
        return str
    end
    first2 = first(str, 2)
    last2 = last(str, 2)
    if first2 == last2
        return str[3:end]
    else
        return str
    end
end

function test()
    @show(without2("HelloHe"))
    @show(without2("HelloHi"))
    @show(without2("Hi"))
    @show(without2("H"))
    @show(without2(""))
    nothing
end

