"""
https://codingbat.com/prob/p101887
Warmup-1 > intMax

Given three int values, a b c, return the largest.

intMax(1, 2, 3) → 3
intMax(1, 3, 2) → 3
intMax(3, 2, 1) → 3
"""
function intmax(a, b, c)
    return maximum([a, b, c])
end

function test()
    @show(intmax(1, 2, 3))
    @show(intmax(1, 3, 2))
    @show(intmax(3, 2, 1))
    nothing
end
