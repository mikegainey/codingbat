"""
https://codingbat.com/prob/p137729
String-1 > middleTwo

Given a string of even length, return a string made of the middle two chars,
so the string "string" yields "ri". The string length will be at least 2.

middleTwo("string") → "ri"
middleTwo("code") → "od"
middleTwo("Practice") → "ct"
"""
function middletwo(s)
    mid = div(length(s), 2)
    return s[mid:mid+1]
end

function test()
    @show(middletwo("ab"))
    @show(middletwo("code"))
    @show(middletwo("string"))
    @show(middletwo("Practice"))
    nothing
end
