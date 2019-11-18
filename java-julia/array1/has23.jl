"""
https://codingbat.com/prob/p171022
Array-1 > has23

Given an int array length 2, return true if it contains a 2 or a 3.

has23([2, 5]) → true
has23([4, 3]) → true
has23([4, 5]) → false
"""
function has23(A)
    return 2 in A || 3 in A
end

using Test
function test()
    @testset begin
        @test has23([2, 5]) == true
        @test has23([4, 3]) == true
        @test has23([4, 5]) == false
    end
    nothing
end

