"""
https://codingbat.com/prob/p100962
Logic-1 > specialEleven

We'll say a number is special if it is a multiple of 11 or if it is one more than a multiple of 11.
Return true if the given non-negative number is special. Use the % "mod" operator -- see Introduction to Mod

specialEleven(22) → true
specialEleven(23) → true
specialEleven(24) → false
"""
function specialEleven(n)
    return n % 11 in [0, 1]
end

using Test
function test()
    @testset begin
        @test specialEleven(21) == false
        @test specialEleven(22) == true
        @test specialEleven(23) == true
        @test specialEleven(24) == false
    end
    nothing
end

