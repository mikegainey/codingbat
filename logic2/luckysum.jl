"""
https://codingbat.com/prob/p130788
Logic-2 > luckySum

Given 3 int values, a b c, return their sum.
However, if one of the values is 13 then it does not count towards the sum and values to its right do not count.
So for example, if b is 13, then both b and c do not count.

luckysum(1, 2, 3) == 6
luckysum(1, 2, 13) == 3
luckysum(1, 13, 3) == 1
"""
function luckysum(a, b, c)
    if a == 13
        return 0
    elseif b == 13
        return a
    elseif c == 13
        return a + b
    else
        return a + b + c
    end
end

using Test
function test()
    @testset begin
        @test luckysum(1, 2, 3) == 6
        @test luckysum(1, 2, 13) == 3
        @test luckysum(1, 13, 3) == 1
    end
    nothing
end
