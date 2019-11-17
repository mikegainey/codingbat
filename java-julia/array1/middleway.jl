"""
https://codingbat.com/prob/p146449
Array-1 > middleWay

Given 2 int arrays, a and b, each length 3, return a new array length 2 containing their middle elements.

middleWay([1, 2, 3], [4, 5, 6]) → [2, 5]
middleWay([7, 7, 7], [3, 8, 0]) → [7, 8]
middleWay([5, 2, 9], [1, 4, 5]) → [2, 4]
"""
function middleway(A, B)
    return [A[2], B[2]]
end

using Test
function test()
    @testset begin
        @test middleway([1, 2, 3], [4, 5, 6]) == [2, 5]
        @test middleway([7, 7, 7], [3, 8, 0]) == [7, 8]
        @test middleway([5, 2, 9], [1, 4, 5]) == [2, 4]
    end
    nothing
end
