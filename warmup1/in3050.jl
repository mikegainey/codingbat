"""
https://codingbat.com/prob/p132134
Warmup-1 > in3050

Given 2 int values, return true if they are both in the range 30..40 inclusive,
or they are both in the range 40..50 inclusive.

in3050(30, 31) → true
in3050(30, 41) → false
in3050(40, 50) → true
"""
function in3050(a, b)
    r1 = 30 ≤ a ≤ 40 && 30 ≤ b ≤ 40
    r2 = 40 ≤ a ≤ 50 && 40 ≤ b ≤ 50
    return r1 || r2
end

function test()
    @show(in3050(30, 31))
    @show(in3050(30, 41))
    @show(in3050(40, 50))
    nothing
end
