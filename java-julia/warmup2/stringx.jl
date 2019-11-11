"""
https://codingbat.com/prob/p171260
Warmup-2 > stringX

Given a string, return a version where all the "x" have been removed.
Except an "x" at the very start or end should not be removed.

stringX("xxHxix") → "xHix"
stringX("abxxxcd") → "abcd"
stringX("xabxxxcdx") → "xabcdx"
"""
function stringx(str)
    a = str[1]
    b = filter(x -> x ≠ 'x', str[2:end-1])
    c = str[end]
    return string(a, b, c)
end

function test()
    @show(stringx("xxHxix"))
    @show(stringx("abxxxcd"))
    @show(stringx("xabxxxcdx"))
    nothing
end

