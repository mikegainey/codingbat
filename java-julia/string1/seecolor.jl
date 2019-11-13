"""
https://codingbat.com/prob/p199216
String-1 > seeColor

Given a string, if the string begins with "red" or "blue" return that color string,
otherwise return the empty string.

seeColor("redxx") → "red"
seeColor("xxred") → ""
seeColor("blueTimes") → "blue"
"""
function seecolor1(str)
    if first(str, 3) == "red"
        return "red"
    elseif first(str, 4) == "blue"
        return "blue"
    else
        return ""
    end
end

function seecolor2(str)
    targets = ["red", "blue"]
    for target in targets
        if first(str, length(target)) == target
            return target
        end
    end
    return ""
end

function test()
    @show(seecolor1("redxx"))
    @show(seecolor1("xxred"))
    @show(seecolor1("blueTimes"))
    println()
    @show(seecolor2("redxx"))
    @show(seecolor2("xxred"))
    @show(seecolor2("blueTimes"))
    nothing
end

