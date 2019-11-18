"""
https://codingbat.com/prob/p137188
Array-1 > makeLast

Given an int array,
return a new array with double the length where its last element is the same as the original array,
and all the other elements are 0.
The original array will be length 1 or more. Note: by default, a new int array contains all 0's.

makeLast([4, 5, 6]) → [0, 0, 0, 0, 0, 6]
makeLast([1, 2]) → [0, 0, 0, 2]
makeLast([3]) → [0, 3]
"""
function makelast(A)
    return [zeros(length(A) * 2 - 1); A[end]]
end

using Test
function test()
    @testset begin
        @test makelast([4, 5, 6]) == [0, 0, 0, 0, 0, 6]
        @test makelast([1, 2]) == [0, 0, 0, 2]
        @test makelast([3]) == [0, 3]
    end
    nothing
end

