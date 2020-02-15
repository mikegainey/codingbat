"""
https://codingbat.com/prob/p151940
String-1 > withoutX

Given a string, if the first or last chars are 'x', return the string without those 'x' chars,
and otherwise return the string unchanged.

withoutX("xHix") → "Hi"
withoutX("xHi") → "Hi"
withoutX("Hxix") → "Hxi"
"""
function withoutx(str)
    return strip(str, ['x'])
end

function test()
    @show(withoutx("xHix"))
    @show(withoutx("xHi"))
    @show(withoutx("Hxix"))
    nothing
end
