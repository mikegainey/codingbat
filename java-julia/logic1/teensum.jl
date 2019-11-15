"""
https://codingbat.com/prob/p178728
Logic-1 > teenSum

Given 2 ints, a and b, return their sum. However, "teen" values in the range 13..19 inclusive, are extra lucky.
So if either value is a teen, just return 19.

teenSum(3, 4) → 7
teenSum(10, 13) → 19
teenSum(13, 2) → 19
"""
function teensum(a, b)
    if 13 ≤ a ≤ 19 || 13 ≤ b ≤ 19
        return 19
    else
        return a + b
    end
end

using Test
function test()
    @testset begin
        @test teensum(3, 4) == 7
        @test teensum(10, 13) == 19
        @test teensum(13, 2) == 19
    end
    nothing
end
