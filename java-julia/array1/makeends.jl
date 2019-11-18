"""
https://codingbat.com/prob/p101230
Array-1 > makeEnds

Given an array of ints,
return a new array length 2 containing the first and last elements from the original array.
The original array will be length 1 or more.

makeEnds([1, 2, 3]) → [1, 3]
makeEnds([1, 2, 3, 4]) → [1, 4]
makeEnds([7, 4, 6, 2]) → [7, 2]
"""
function makeends(A)
    return [A[1], A[end]]
end

using Test
function test()
    @testset begin
        @test makeends([1, 2, 3]) == [1, 3]
        @test makeends([1, 2, 3, 4]) == [1, 4]
        @test makeends([7, 4, 6, 2]) == [7, 2]
    end
    nothing
end
