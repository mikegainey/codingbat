"""
https://codingbat.com/prob/p115384
Logic-1 > maxMod5

Given two int values, return whichever value is larger.
However if the two values have the same remainder when divided by 5, then the return the smaller value.
However, in all cases, if the two values are the same, return 0.
Note: the % "mod" operator computes the remainder, e.g. 7 % 5 is 2.

maxMod5(2, 3) → 3
maxMod5(6, 2) → 6
maxMod5(3, 2) → 3
"""
function maxmod5(a, b)
    if a == b
        return 0
    elseif a % 5 == b % 5
        return min(a, b)
    else
        return max(a, b)
    end
end

using Test
function test()
    @testset begin
        @test maxmod5(2, 3) == 3
        @test maxmod5(6, 2) == 6
        @test maxmod5(3, 2) == 3
        @test maxmod5(7, 12) == 7
        @test maxmod5(3, 3) == 0
    end
    nothing
end
