"""
https://codingbat.com/prob/p177372
Warmup-1 > max1020

Given 2 positive int values, return the larger value that is in the range 10..20 inclusive,
or return 0 if neither is in that range.

max1020(11, 19) → 19
max1020(19, 11) → 19
max1020(11, 9) → 11
"""
function max1020(a, b)
    filter((x -> 10 ≤ x ≤ 20), [a, b]) |> maximum
end

function test()
    @show(max1020(11, 19))
    @show(max1020(19, 11))
    @show(max1020(11, 9))
    nothing
end
