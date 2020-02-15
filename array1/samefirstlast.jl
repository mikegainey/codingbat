"""
https://codingbat.com/prob/p118976
Array-1 > sameFirstLast

Given an array of ints, return true if
- the array is length 1 or more, and
- the first element and the last element are equal.

sameFirstLast([1, 2, 3]) → false
sameFirstLast([1, 2, 3, 1]) → true
sameFirstLast([1, 2, 1]) → true
"""
function samefirstlast(A)
    return length(A) ≥ 1 && A[1] == A[end]
end

using Test
function test()
    @testset begin
        @test samefirstlast([1, 2, 3]) == false
        @test samefirstlast([1, 2, 3, 1]) == true
        @test samefirstlast([1, 2, 1]) == true
    end
    nothing
end

