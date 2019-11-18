"""
https://codingbat.com/prob/p142455
Array-1 > frontPiece

Given an int array of any length, return a new array of its first 2 elements.
If the array is smaller than length 2, use whatever elements are present.

frontpiece([1, 2, 3]) → [1, 2]
frontpiece([1, 2]) → [1, 2]
frontpiece([1]) → [1]
"""
function frontpiece(A)
    out = []
    for (i, a) in enumerate(A)
        i ≤ 2 ? push!(out, a) : break
    end
    return out
end

using Test
function test()
    @testset begin
        @test frontpiece([1, 2, 3]) == [1, 2]
        @test frontpiece([1, 2]) == [1, 2]
        @test frontpiece([1]) == [1]
    end
    nothing
end
