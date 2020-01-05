"""
https://codingbat.com/prob/p167015
Recursion-1 > count11

Given a string, compute recursively (no loops) the number of "11" substrings in the string.
The "11" substrings should not overlap.

count11("11abc11") == 2
count11("abc11x11x11") == 3
count11("111") == 1
"""
function count11(s)
    if length(s) < 2
        return 0
    else
        if s[1:2] == "11"
            return 1 + count11(s[3:end])
        else
            return 0 + count11(s[2:end])
        end
    end
end

using Test
function test()
    @testset begin
        @test count11("11abc11") == 2
        @test count11("abc11x11x11") == 3
        @test count11("111") == 1
    end
    nothing
end

test()
