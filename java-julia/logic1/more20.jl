"""
https://codingbat.com/prob/p118290
Logic-1 > more20

Return true if the given non-negative number is 1 or 2 more than a multiple of 20. See also: Introduction to Mod

more20(20) → false
more20(21) → true
more20(22) → true
"""
function more20(n)
    return (n % 20) in [1, 2]
end

using Test
function test()
    @testset begin
        @test more20(19) == false
        @test more20(20) == false
        @test more20(21) == true
        @test more20(22) == true
        @test more20(23) == false
        @test more20(39) == false
        @test more20(40) == false
        @test more20(41) == true
        @test more20(42) == true
        @test more20(43) == false
    end
    nothing
end
