"""
https://codingbat.com/prob/p163411
String-1 > firstTwo

Given a string, return the string made of its first two chars, so the String "Hello" yields "He".
If the string is shorter than length 2, return whatever there is, so "X" yields "X",
and the empty string "" yields the empty string "".

firstTwo("Hello") → "He"
firstTwo("abcdefg") → "ab"
firstTwo("ab") → "ab"
"""
function firsttwo(str)
    return first(str, 2)
end

function test()
    @show(firsttwo("Hello"))
    @show(firsttwo("abcdefg"))
    @show(firsttwo("ab"))
    @show(firsttwo("a"))
    @show(firsttwo(""))
    nothing
end

