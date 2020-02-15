"""
https://codingbat.com/prob/p113261
Logic-1 > twoAsOne

Given three ints, a b c, return true if it is possible to add two of the ints to get the third.

twoAsOne(1, 2, 3) → true
twoAsOne(3, 1, 2) → true
twoAsOne(3, 2, 2) → false
"""
function twoasone(a, b, c)
    sum((a, b, c)) == 2 * max(a, b, c)
end

using Test
function test()
    @testset begin
        @test twoasone(1, 2, 3) == true
        @test twoasone(3, 1, 2) == true
        @test twoasone(3, 2, 2) == false
    end
    nothing
end
