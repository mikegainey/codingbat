"""
https://codingbat.com/prob/p128270
Array-1 > front11

Given 2 int arrays, a and b, of any length, return a new array with the first element of each array.
If either array is length 0, ignore that array.

front11([1, 2, 3], [7, 9, 8]) → [1, 7]
front11([1], [2]) → [1, 2]
front11([1, 7], []) → [1]
"""
function front11(A, B)
    out = []
    length(A) ≥ 1 && push!(out, A[1])
    length(B) ≥ 1 && push!(out, B[1])
    return out
end

using Test
function test()
    @testset begin
        @test front11([1, 2, 3], [7, 9, 8]) == [1, 7]
        @test front11([1], [2]) == [1, 2]
        @test front11([1, 7], []) == [1]
        @test front11([], [4, 5]) == [4]
        @test front11([], []) == []
    end
    nothing
end
