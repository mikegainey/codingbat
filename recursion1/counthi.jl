"""
https://codingbat.com/prob/p184029
Recursion-1 > countHi

Given a string, compute recursively (no loops) the number of times lowercase "hi" appears in the string.

counthi("xxhixx") == 1
counthi("xhixhix") == 2
counthi("hi") == 1
"""
function counthi(s)
    if length(s) < 2
        return 0
    else
        if s[1:2] == "hi"
            1 + counthi(s[3:end])
        else
            0 + counthi(s[2:end])
        end
    end
end

using Test
function test()
    @testset begin
        @test counthi("xxhixx") == 1
        @test counthi("xhixhix") == 2
        @test counthi("hi") == 1
        @test counthi("hihixhi") == 3
    end
    nothing
end

test()
