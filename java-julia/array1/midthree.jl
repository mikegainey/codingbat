"""
https://codingbat.com/prob/p155713
Array-1 > midThree

Given an array of ints of odd length, return a new array length 3 containing the elements from the middle of the array.
The array length will be at least 3.

midThree([1, 2, 3, 4, 5]) → [2, 3, 4]
midThree([8, 6, 7, 5, 3, 0, 9]) → [7, 5, 3]
midThree([1, 2, 3]) → [1, 2, 3]
"""
function midthree(A)
    i = length(A) ÷ 2
    return A[i:i+2]
end

using Test
function test()
    @testset begin
        @test midthree([1, 2, 3, 4, 5]) == [2, 3, 4]
        @test midthree([8, 6, 7, 5, 3, 0, 9]) == [7, 5, 3]
        @test midthree([1, 2, 3]) == [1, 2, 3]
    end
    nothing
end
