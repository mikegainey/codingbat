"""
https://codingbat.com/prob/p124984
Warmup-1 > makes10

Given 2 ints, a and b, return True if one if them is 10 or if their sum is 10.

makes10(9, 10) → True
makes10(9, 9) → False
makes10(1, 9) → True
"""
function makes10(a, b)
    if a == 10 || b == 10 || a + b == 10
        return true
    else
        return false
    end
end
