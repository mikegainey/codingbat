"""
https://codingbat.com/prob/p192082
Warmup-1 > icyHot

Given two temperatures, return true if one is less than 0 and the other is greater than 100.

icyHot(120, -1) → true
icyHot(-1, 120) → true
icyHot(2, 120) → false
"""
function icyhot(a, b)
    # also see the extrema function
    return min(a, b) < 0 && max(a, b) > 100
end

function test()
    @show(icyhot(120, -1))
    @show(icyhot(-1, 120))
    @show(icyhot(120, 2))
    nothing
end
