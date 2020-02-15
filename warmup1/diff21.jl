"""
https://codingbat.com/prob/p116624
Warmup-1 > diff21

Given an int n, return the absolute difference between n and 21, except return double the absolute difference if n is over 21.

diff21(19) → 2
diff21(10) → 11
diff21(21) → 0
"""
function diff21(n)
    if n > 21
        return abs(21 - n) * 2
    else
        return abs(21 - n)
    end
end

function test()
    @show(diff21(19))
    @show(diff21(10))
    @show(diff21(21))
    @show(diff21(24))
    return nothing
end
