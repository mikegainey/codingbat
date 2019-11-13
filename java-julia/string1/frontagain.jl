"""
https://codingbat.com/prob/p196652
String-1 > frontAgain

Given a string, return true if the first 2 chars in the string also appear at the end of the string, such as with "edited".

frontAgain("edited") → true
frontAgain("edit") → false
frontAgain("ed") → true
"""
function frontagain(str)
    if length(str) < 2
        return false
    elseif first(str, 2) == last(str, 2)
        return true
    end
end

function test()
    @show(frontagain("edited"))
    @show(frontagain("edit"))
    @show(frontagain("ed"))
    @show(frontagain("a"))
    @show(frontagain(""))
    nothing
end

