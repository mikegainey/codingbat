"""
https://codingbat.com/prob/p142270
Warmup-2 > stringTimes

Given a string and a non-negative int n, return a larger string that is n copies of the original string.

stringTimes("Hi", 2) → "HiHi"
stringTimes("Hi", 3) → "HiHiHi"
stringTimes("Hi", 1) → "Hi"
"""
function stringtimes(s, n)
    return s^n
end

function test()
    @show(stringtimes("Hi", 2))
    @show(stringtimes("Hi", 3))
    @show(stringtimes("Hi", 1))
    nothing
end
