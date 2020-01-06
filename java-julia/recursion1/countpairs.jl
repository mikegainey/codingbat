"""
https://codingbat.com/prob/p154048
Recursion-1 > countPairs

We'll say that a "pair" in a string is two instances of a char separated by a char.
So "AxA" the A's make a pair. Pair's can overlap, so "AxAxA" contains 3 pairs -- 2 for A and 1 for x.
Recursively compute the number of pairs in the given string.

countpairs("axa") == 1
countpairs("axax") == 2
countpairs("axbx") == 1
"""
function countpairs(s)
    if length(s) < 3
        return 0
    else
        tail = s[2:end]
        if s[1] == s[3]
            return 1 + countpairs(tail)
        else
            return 0 + countpairs(tail)
        end
    end
end

using Test
function test()
    @testset begin
        @test countpairs("axa") == 1
        @test countpairs("axax") == 2
        @test countpairs("axbx") == 1
    end
    nothing
end

test()
