"""
https://codingbat.com/prob/p191022
Warmup-1 > startHi

Given a string, return true if the string starts with "hi" and false otherwise.

startHi("hi there") → true
startHi("hi") → true
startHi("hello hi") → false
"""
function starthi(s)
    if length(s) < 2
        return false
    else
        return s[1:2] == "hi"
    end
end

function test()
    @show(starthi("hi there"))
    @show(starthi("hi"))
    @show(starthi("hello hi"))
    @show(starthi("h"))
end
