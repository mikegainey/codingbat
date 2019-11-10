"""
https://codingbat.com/prob/p184004
Warmup-1 > nearHundred

Given an int n, return true if it is within 10 of 100 or 200. Note: Math.abs(num) computes the absolute value of a number.

nearHundred(93) → true
nearHundred(90) → true
nearHundred(89) → false
"""
function nearhundred(n)
    return abs(100 - n) ≤ 10 || abs(200 - n) ≤ 10
end

function test()
    for n in 80:120
        println("nearhundred($n) = ", nearhundred(n))
    end
    for n in 180:220
        println("nearhundred($n) = ", nearhundred(n))
    end
end
