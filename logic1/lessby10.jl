"""
https://codingbat.com/prob/p179196
Logic-1 > lessBy10

Given three ints, a b c, return true if one of them is 10 or more less than one of the others.

lessBy10(1, 7, 11) → true
lessBy10(1, 7, 10) → false
lessBy10(11, 1, 7) → true
"""
function lessby10(a, b, c)
    return abs(max(a, b, c) - min(a, b, c)) ≥ 10
end

using Test
function test()
    @testset begin
        @test lessby10(1, 7, 11) == true
        @test lessby10(1, 7, 10) == false
        @test lessby10(11, 1, 7) == true
    end
    nothing
end

