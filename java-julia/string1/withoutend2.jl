"""
https://codingbat.com/prob/p174254
String-1 > withouEnd2

Given a string, return a version without both the first and last char of the string.
The string may be any length, including 0.

withouEnd2("Hello") → "ell"
withouEnd2("abc") → "b"
withouEnd2("ab") → ""
"""
function withoutend2(str)
    return str[2 : end - 1]
end

function test()
    @show(withoutend2("Hello"))
    @show(withoutend2("abc"))
    @show(withoutend2("ab"))
    @show(withoutend2("a"))
    @show(withoutend2(""))
    nothing
end

