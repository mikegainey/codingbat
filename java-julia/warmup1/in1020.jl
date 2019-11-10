"""
https://codingbat.com/prob/p144535
Warmup-1 > in1020

Given 2 int values, return true if either of them is in the range 10..20 inclusive.

in1020(12, 99) → true
in1020(21, 12) → true
in1020(8, 99) → false
"""
function in1020(a, b)
    return 10 ≤ a ≤ 20 || 10 ≤ b ≤ 20
end

function test()
    @show(in1020(12, 99))
    @show(in1020(21, 12))
    @show(in1020(8, 99))
end

