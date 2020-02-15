"""
https://codingbat.com/prob/p151713
Warmup-1 > mixStart

Return true if the given string begins with "mix", except the 'm' can be anything, so "pix", "9ix" .. all count.

mixStart("mix snacks") → true
mixStart("pix snacks") → true
mixStart("piz snacks") → false
"""
function mixstart(s)
    return s[2:3] == "ix"
end

function test()
    @show(mixstart("mix snacks"))
    @show(mixstart("pix snacks"))
    @show(mixstart("piz snacks"))
    return nothing
end
