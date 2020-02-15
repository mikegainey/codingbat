"""
https://codingbat.com/prob/p132118
String-1 > conCat

Given two strings, append them together (known as "concatenation") and return the result.
However, if the concatenation creates a double-char, then omit one of the chars, so "abc" and "cat" yields "abcat".

conCat("abc", "cat") → "abcat"
conCat("dog", "cat") → "dogcat"
conCat("abc", "") → "abc"
"""
function concat(s1, s2)
    if last(s1, 1) == first(s2, 1)
        return s1[1 : end - 1] * s2
    else
        return s1 * s2
    end
end

function test()
    @show(concat("abc", "cat"))
    @show(concat("dog", "cat"))
    @show(concat("abc", ""))
    @show(concat("", "abc"))
    @show(concat("", ""))
    nothing
end

