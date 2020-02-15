"""
https://codingbat.com/prob/p165701
Warmup-1 > loneTeen

We'll say that a number is "teen" if it is in the range 13..19 inclusive.
Given 2 int values, return true if one or the other is teen, but not both.

loneTeen(13, 99) → true
loneTeen(21, 19) → true
loneTeen(13, 13) → false
"""
function loneteen(a, b)
    teens = filter(x -> 13 ≤ x ≤ 19, [a, b])
    return length(teens) == 1
end

function test()
    @show(loneteen(13, 99))
    @show(loneteen(21, 19))
    @show(loneteen(13, 13))
    nothing
end
