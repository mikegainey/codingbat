"""
https://codingbat.com/prob/p141905
Warmup-1 > sum_double

Given two int values, return their sum. Unless the two values are the same, then return double their sum.

sum_double(1, 2) → 3
sum_double(3, 2) → 5
sum_double(2, 2) → 8
"""
function sum_double(a, b)
    if a == b
        return 2 * (a + b)
    else
        return a + b
    end
end

function test()
    for a in 1:3
        for b in 1:3
            println("sum_double($a, $b) -> ", sum_double(a, b))
        end
    end
end
