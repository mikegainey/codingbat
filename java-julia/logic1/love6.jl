"""
https://codingbat.com/prob/p137742
Logic-1 > love6

The number 6 is a truly great number. Given two int values, a and b, return true if either one is 6.
Or if their sum or difference is 6. Note: the function Math.abs(num) computes the absolute value of a number.

love6(6, 4) → true
love6(4, 5) → false
love6(1, 5) → true
"""
function love6(a, b)
    absum = a + b
    abdiff = abs(a - b)
    return 6 in [a, b, absum, abdiff]
end

using Test
function test()
    @testset begin
        @test love6(6, 4) == true
        @test love6(4, 6) == true
        @test love6(4, 5) == false
        @test love6(1, 5) == true
        @test love6(15, 9) == true
    end
    nothing
end

