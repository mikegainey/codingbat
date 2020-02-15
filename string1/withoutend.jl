"""
https://codingbat.com/prob/p130896
String-1 > withoutEnd

Given a string, return a version without the first and last char, so "Hello" yields "ell".
The string length will be at least 2.

withoutEnd("Hello") → "ell"
withoutEnd("java") → "av"
withoutEnd("coding") → "odin"
"""
function withoutend(str)
    return str[2 : end-1]
end

function test()
    @show(withoutend("Hello"))
    @show(withoutend("julia"))
    @show(withoutend("coding"))
    @show(withoutend("ab"))
    @show(withoutend("abc"))
    @show(withoutend("abcd"))
    nothing
end


