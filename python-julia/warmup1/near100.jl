"""
https://codingbat.com/prob/p124676
Warmup-1 > near_hundred

Given an int n, return True if it is within 10 of 100 or 200. Note: abs(num) computes the absolute value of a number.

near_hundred(93) → True
near_hundred(90) → True
near_hundred(89) → False
"""
function near_hundred(n)
    return abs(n - 100) ≤ 10 || abs(n - 200) ≤ 10
end

testinput = vcat(collect(80:120), collect(180:220))
for x in testinput
    println(x, " ", near_hundred(x))
end
