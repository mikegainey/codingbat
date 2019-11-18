"""
https://codingbat.com/prob/p146256
Array-1 > maxEnd3

Given an array of ints length 3, figure out which is larger, the first or last element in the array,
and set all the other elements to be that value. Return the changed array.

maxEnd3([1, 2, 3]) → [3, 3, 3]
maxEnd3([11, 5, 9]) → [11, 11, 11]
maxEnd3([2, 11, 3]) → [3, 3, 3]
"""
function maxend3(A)
    maxA = max(A[1], A[end])
    return [maxA for a in A]
end

using Test
function test()
    @testset begin
        @test maxend3([1, 2, 3]) == [3, 3, 3]
        @test maxend3([11, 5, 9]) == [11, 11, 11]
        @test maxend3([2, 11, 3]) == [3, 3, 3]
    end
    nothing
end

