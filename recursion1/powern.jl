"""
https://codingbat.com/prob/p158888
Recursion-1 > powerN

Given base and n that are both 1 or more, compute recursively (no loops) the value of base to the n power,
so powerN(3, 2) is 9 (3 squared).

powern(3, 1) == 3
powern(3, 2) == 9
powern(3, 3) == 27
"""
function powern(base, power)
    if power == 1
        return base
    else
        base * powern(base, power-1)
    end
end

using Test
function test()
    @testset begin
        @test powern(3, 1) == 3
        @test powern(3, 2) == 9
        @test powern(3, 3) == 27
    end
    nothing
end

test()
