"""
https://codingbat.com/prob/p196441
Warmup-1 > everyNth

Given a non-empty string and an int N, return the string made starting with char 0, and then every Nth char of the string.
So if N is 3, use char 0, 3, 6, ... and so on. N is 1 or more.

everyNth("Miracle", 2) → "Mrce"
everyNth("abcdefg", 2) → "aceg"
everyNth("abcdefg", 3) → "adg"
"""
function everynth(s, n)
    return s[1:n:end]
end

function test()
    @show(everynth("Miracle", 2))
    @show(everynth("abcdefg", 2))
    @show(everynth("abcdefg", 3))
    nothing
end
