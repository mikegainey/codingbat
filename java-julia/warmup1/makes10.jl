"""
https://codingbat.com/prob/p182873
Warmup-1 > makes10

Given 2 ints, a and b, return true if one if them is 10 or if their sum is 10.

makes10(9, 10) → true
makes10(9, 9) → false
makes10(1, 9) → true
"""
function makes10(a, b)
    return a == 10 || b == 10 || a + b == 10
end

function test()
    @show(makes10(9, 10))
    @show(makes10(9, 9))
    @show(makes10(10, 9))
    @show(makes10(1, 9))
    nothing
end
