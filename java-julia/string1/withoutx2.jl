"""
https://codingbat.com/prob/p151359
String-1 > withoutX2

Given a string, if one or both of the first 2 chars is 'x', return the string without those 'x' chars,
and otherwise return the string unchanged. This is a little harder than it looks.

withoutX2("xHi") → "Hi"
withoutX2("Hxi") → "Hi"
withoutX2("Hi") → "Hi"
"""
function withoutx2(s)
    first2 = filter(x -> x ≠ 'x', first(s, 2))
    rest = length(s) > 2 ? s[3:end] : ""
    return first2 * rest
end

function test()
    @show(withoutx2("xHi"))
    @show(withoutx2("Hxi"))
    @show(withoutx2("Hi"))
    @show(withoutx2("xx"))
    @show(withoutx2("x"))
    @show(withoutx2("i"))
    @show(withoutx2(""))
    nothing
end


