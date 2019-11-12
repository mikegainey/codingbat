"""
https://codingbat.com/prob/p103895
String-1 > endsLy

Given a string, return true if it ends in "ly".

endsLy("oddly") → true
endsLy("y") → false
endsLy("oddy") → false
"""
function endsly(str)
    return last(str, 2) == "ly"
end

function test()
    @show(endsly("oddly"))
    @show(endsly("y"))
    @show(endsly("oddy"))
    nothing
end
