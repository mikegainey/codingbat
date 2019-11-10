"""
https://codingbat.com/prob/p186759
Warmup-2 > doubleX

Given a string, return true if the first instance of "x" in the string is immediately followed by another "x".

doubleX("axxbb") → true
doubleX("axaxax") → false
doubleX("xxxxx") → true
"""
function doublex(s)
    for i in 1 : length(s) - 1
        if s[i] == 'x' && s[i+1] == 'x'
            return true
        end
    end
    return false
end

function test()
    @show(doublex("axxbb"))
    @show(doublex("axaxax"))
    @show(doublex("xxxxx"))
    nothing
end
