"""
https://codingbat.com/prob/p144623
String-1 > twoChar

Given a string and an index, return a string length 2 starting at the given index.
If the index is too big or too small to define a string length 2, use the first 2 chars.
The string length will be at least 2.

twoChar("java", 0) → "ja"
twoChar("java", 2) → "va"
twoChar("java", 3) → "ja"
"""
function twochar(s, i)
    len = length(s)
    if i > len - 1
        return first(s, 2)
    else
        return s[i:i+1]
    end
end

function test()
    @show(twochar("julia", 1))
    @show(twochar("julia", 3))
    @show(twochar("julia", 5))
    nothing
end

