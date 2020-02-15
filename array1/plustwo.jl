"""
https://codingbat.com/prob/p180840
Array-1 > plusTwo

Given 2 int arrays, each length 2, return a new array length 4 containing all their elements.

plusTwo([1, 2], [3, 4]) → [1, 2, 3, 4]
plusTwo([4, 4], [2, 2]) → [4, 4, 2, 2]
plusTwo([9, 2], [3, 4]) → [9, 2, 3, 4]
"""
function plustwo(A, B)
    return [A; B]
end

using Test
function test()
    @testset begin
        @test plustwo([1, 2], [3, 4]) == [1, 2, 3, 4]
        @test plustwo([4, 4], [2, 2]) == [4, 4, 2, 2]
        @test plustwo([9, 2], [3, 4]) == [9, 2, 3, 4]
    end
    nothing
end

