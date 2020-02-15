"""
https://codingbat.com/prob/p137365
Logic-1 > in1To10

Given a number n, return true if n is in the range 1..10, inclusive.
Unless outsideMode is true, in which case return true if the number is less or equal to 1, or greater or equal to 10.

in1To10(5, false) → true
in1To10(11, false) → false
in1To10(11, true) → true
"""
function in1to10(n, outsidemode)
    if outsidemode
        return n ≤ 1 || n ≥ 10
    else
        return 1 ≤ n ≤ 10
    end
end

using Test
function test()
    @testset begin
        @test in1to10(5, false) == true
        @test in1to10(11, false) == false
        @test in1to10(11, true) == true
    end
    nothing
end
