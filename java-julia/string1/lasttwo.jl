"""
https://codingbat.com/prob/p194786
String-1 > lastTwo

Given a string of any length, return a new string where the last 2 chars, if present, are swapped,
so "coding" yields "codign".

lastTwo("coding") → "codign"
lastTwo("cat") → "cta"
lastTwo("ab") → "ba"
"""
function lasttwo(s)
    if length(s) < 2
        return s
    else
        return s[1:end-2] * s[end] * s[end-1]
    end
end

function test()
    @show(lasttwo("coding"))
    @show(lasttwo("cat"))
    @show(lasttwo("ab"))
    @show(lasttwo("a"))
    @show(lasttwo(""))
    nothing
end

