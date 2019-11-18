"""
https://codingbat.com/prob/p118044
Array-1 > swapEnds

Given an array of ints, swap the first and last elements in the array.
Return the modified array. The array length will be at least 1.

swapends([1, 2, 3, 4]) → [4, 2, 3, 1]
swapends([1, 2, 3]) → [3, 2, 1]
swapends([8, 6, 7, 9, 5]) → [5, 6, 7, 9, 8]
"""
function swapends(A)
    A[1], A[end] = A[end], A[1]
    return A
end

using Test
function test()
    @testset begin
        @test swapends([1, 2, 3, 4]) == [4, 2, 3, 1]
        @test swapends([1, 2, 3]) == [3, 2, 1]
        @test swapends([8, 6, 7, 9, 5]) == [5, 6, 7, 9, 8]
    end
    nothing
end
