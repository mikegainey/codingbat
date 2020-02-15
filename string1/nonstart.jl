"""
https://codingbat.com/prob/p143825
String-1 > nonStart

Given 2 strings, return their concatenation, except omit the first char of each. The strings will be at least length 1.

nonStart("Hello", "There") → "ellohere"
nonStart("java", "code") → "avaode"
nonStart("shotl", "java") → "hotlava"
"""
function nonstart(s1, s2)
    return s1[2:end] * s2[2:end]
end

function test()
    @show(nonstart("Hello", "There"))
    @show(nonstart("julia", "code"))
    @show(nonstart("shotl", "julia"))
    nothing
end

