"""
https://codingbat.com/prob/p185176
Array-1 > maxTriple

Given an array of ints of odd length, look at the first, last, and middle values in the array and return the largest.
The array length will be a least 1.

maxTriple([1, 2, 3]) → 3
maxTriple([1, 5, 3]) → 5
maxTriple([5, 2, 3]) → 5
"""
function maxtriple(A)
    midx = length(A) ÷ 2 + 1
    return max(A[1], A[midx], A[end])
end

using Test
function test()
    @testset begin
        @test maxtriple([1, 2, 3]) == 3
        @test maxtriple([1, 5, 3]) == 5
        @test maxtriple([5, 2, 3]) == 5
    end
    nothing
end
