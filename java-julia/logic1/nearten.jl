"""
https://codingbat.com/prob/p193613
Logic-1 > nearTen

Given a non-negative number "num", return true if num is within 2 of a multiple of 10.
Note: (a % b) is the remainder of dividing a by b, so (7 % 5) is 2. See also: Introduction to Mod

nearTen(12) → true
nearTen(17) → false
nearTen(19) → true
"""
function nearten(n)
    n % 10 ≤ 2 || n % 10 ≥ 8
end

using Test
function test()
    @testset begin
        @test nearten(17) == false
        @test nearten(19) == true
        @test nearten(7) == false
        @test nearten(8) == true
        @test nearten(9) == true
        @test nearten(10) == true
        @test nearten(11) == true
        @test nearten(12) == true
        @test nearten(13) == false
    end
    nothing
end

