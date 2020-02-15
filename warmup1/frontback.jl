"""
https://codingbat.com/prob/p123384
Warmup-1 > frontBack

Given a string, return a new string where the first and last chars have been exchanged.

frontBack("code") → "eodc"
frontBack("a") → "a"
frontBack("ab") → "ba"
"""
function frontback(s)
    if length(s) == 1
        return s
    else
        return string(s[end], s[2:end-1], s[1])
    end
end

function test()
    for s in ["code", "a", "ab"]
        println("frontback($s) = ", frontback(s))
    end
end


