"""
https://codingbat.com/prob/p100905
Warmup-1 > delDel

Given a string, if the string "del" appears starting at index 2, return a string where that "del" has been deleted.
Otherwise, return the string unchanged.

deldel("adelbc") → "abc"
deldel("adelHello") → "aHello"
deldel("adedbc") → "adedbc"
"""
function deldel(s)
    if length(s) ≥ 4 && s[2:4] == "del"
        return string(s[1], s[5:end])
    else
        return s
    end
end


function test()
    @show(deldel("adelbc"))
    @show(deldel("adelHello"))
    @show(deldel("adedbc"))
    @show(deldel("adel"))
    @show(deldel("del"))
    @show(deldel("de"))
    nothing
end
