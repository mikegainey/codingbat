"""
https://codingbat.com/prob/p158175
Recursion-1 > pairStar

Given a string, compute recursively a new string
where identical chars that are adjacent in the original string are separated from each other by a "*".

pairstar("hello") == "hel*lo"
pairstar("xxyy") == "x*xy*y"
pairstar("aaaa") == "a*a*a*a"
"""
function pairstar(ss)
    if length(ss) < 2
        return ss
    else
        if ss[1] == ss[2]
            string(ss[1], '*', pairstar(ss[2:end]))
        else
            string(ss[1], pairstar(ss[2:end]))
        end
    end
end

using Test
function test()
    @testset begin
        @test pairstar("hello") == "hel*lo"
        @test pairstar("xxyy") == "x*xy*y"
        @test pairstar("aaaa") == "a*a*a*a"
    end
    nothing
end

test()
