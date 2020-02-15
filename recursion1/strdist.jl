"""
https://codingbat.com/prob/p195413
Recursion-1 > strDist

Given a string and a non-empty substring sub,
compute recursively the largest substring which starts and ends with sub and return its length.

strdist("catcowcat", "cat") == 9
strdist("catcowcat", "cow") == 3
strdist("cccatcowcatxx", "cat") == 9
"""
function strdist(s, ss)
    lens = length(s)
    lenss = length(ss)
    if lens < lenss
        return 0
    end
    firstbit = s[1:lenss]
    lastbit = s[end-lenss+1:end]
    if firstbit == ss && lastbit == ss
        return lens
    else
        if firstbit ≠ ss && lastbit ≠ ss
            strdist(s[2:end-1], ss)
        elseif firstbit ≠ ss
            strdist(s[2:end], ss)
        elseif lastbit ≠ ss
            strdist(s[s:end-1], ss)
        else
            error("The if-elseif didn't catch all cases!")
        end
    end
end

using Test
function test()
    @testset begin
        @test strdist("catcowcat", "cat") == 9
        @test strdist("catcowcat", "cow") == 3
        @test strdist("cccatcowcatxx", "cat") == 9
    end
    nothing
end

test()
