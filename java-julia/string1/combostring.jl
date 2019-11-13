"""
https://codingbat.com/prob/p168564
String-1 > comboString

Given 2 strings, a and b, return a string of the form short+long+short,
with the shorter string on the outside and the longer string on the inside.
The strings will not be the same length, but they may be empty (length 0).

comboString("Hello", "hi") → "hiHellohi"
comboString("hi", "Hello") → "hiHellohi"
comboString("aaa", "b") → "baaab"
"""
function combostring(a, b)
    lena = length(a)
    lenb = length(b)
    shorter = lena < lenb ? a : b
    longer = lena > lenb ? a : b
    return shorter * longer * shorter
end

function test()
    @show(combostring("Hello", "hi"))
    @show(combostring("hi", "Hello"))
    @show(combostring("aaa", "b"))
    nothing
end

