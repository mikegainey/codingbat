"""
https://codingbat.com/prob/p162477
String-1 > theEnd

Given a string, return a string length 1 from its front, unless front is false,
in which case return a string length 1 from its back. The string will be non-empty.

theEnd("Hello", true) → "H"
theEnd("Hello", false) → "o"
theEnd("oh", true) → "o"
"""
function theend(str, front)
    if front
        return first(str, 1)
    else
        return last(str, 1)
    end
end

function test()
    @show(theend("Hello", true))
    @show(theend("Hello", false))
    @show(theend("oh", true))
    nothing
end
