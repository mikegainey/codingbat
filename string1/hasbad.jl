"""
https://codingbat.com/prob/p139075
String-1 > hasBad

Given a string, return true if "bad" appears starting at index 0 or 1 in the string, such as with "badxxx" or "xbadxx"
but not "xxbadxx". The string may be any length, including 0. Note: use .equals() to compare 2 strings.

hasBad("badxx") → true
hasBad("xbadxx") → true
hasBad("xxbadxx") → false
"""
function hasbad(str)
    if length(str) < 3
        return false
    elseif first(str, 3) == "bad"
        return true
    elseif first(str, 4)[2:end] == "bad"
        return true
    else
        return false
    end
end

function test()
    @show(hasbad("badxx"))
    @show(hasbad("xbadxx"))
    @show(hasbad("xxbadxx"))
    @show(hasbad("ba"))
    nothing
end

