"""
https://codingbat.com/prob/p175689
Array-1 > no23

Given an int array length 2, return true if it does not contain a 2 or 3.

no23([4, 5]) → true
no23([4, 2]) → false
no23([3, 5]) → false
"""
function no23(A)
    return 2 ∉ A && 3 ∉ A
end

using Test
function test()
    @testset begin
        @test no23([4, 5]) == true
        @test no23([4, 2]) == false
        @test no23([3, 5]) == false
    end
    nothing
end

