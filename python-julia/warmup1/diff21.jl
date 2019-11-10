"""
https://codingbat.com/prob/p197466
Warmup-1 > diff21

Given an int n, return the absolute difference between n and 21, except return double the absolute difference if n is over 21.

diff21(19) → 2
diff21(10) → 11
diff21(21) → 0
"""
function diff21(n)
    if n ≤ 21
        return abs(n - 21)
    else
        return 2 * abs(n - 21)
    end
end
