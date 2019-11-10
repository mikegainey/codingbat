"""
https://codingbat.com/prob/p154485
Warmup-1 > sumDouble

Given two int values, return their sum. Unless the two values are the same, then return double their sum.

sumDouble(1, 2) → 3
sumDouble(3, 2) → 5
sumDouble(2, 2) → 8
"""
function sumdouble(a,b)
    return a == b ? 2(a+b) : a+b
end

function test()
    for a in 1:4
        for b in 1:4
            println("sumdouble($a, $b) = ", sumdouble(a, b))
        end
    end
end
