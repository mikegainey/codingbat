"""
https://codingbat.com/prob/p182879
Logic-2 > noTeenSum

Given 3 int values, a b c, return their sum.
However, if any of the values is a teen -- in the range 13..19 inclusive -- then that value counts as 0,
except 15 and 16 do not count as a teens.
Write a separate helper "public int fixTeen(int n)
{"that takes in an int value and returns that value fixed for the teen rule.
In this way, you avoid repeating the teen code 3 times (i.e. "decomposition").
Define the helper below and at the same indent level as the main noTeenSum().

noteensum(1, 2, 3) → 6
noteensum(2, 13, 1) → 3
noteensum(2, 1, 14) → 3
"""
function fixteen(n)
    teens = [13, 14, 17, 18, 19]
    return n ∈ teens ? 0 : n
end

function noteensum(a, b, c)
    return map(fixteen, [a, b, c]) |> sum
end

using Test
function test()
    @testset begin
        @test noteensum(1, 2, 3) == 6
        @test noteensum(2, 13, 1) == 3
        @test noteensum(2, 1, 14) == 3
    end
    nothing
end


