"""
https://codingbat.com/prob/p178986
Warmup-1 > hasTeen

We'll say that a number is "teen" if it is in the range 13..19 inclusive.
Given 3 int values, return true if 1 or more of them are teen.

hasTeen(13, 20, 10) → true
hasTeen(20, 19, 10) → true
hasTeen(20, 10, 13) → true
"""
function hasteen(n...) # n will be a tuple of arguments
    for arg in n
        if 13 ≤ arg ≤ 19
            return true
        end
    end
    return false
end

function test()
    @show(hasteen(13, 20, 10))
    @show(hasteen(20, 19, 10))
    @show(hasteen(20, 10, 13))
    @show(hasteen(20, 10, 12))
    return nothing
end
