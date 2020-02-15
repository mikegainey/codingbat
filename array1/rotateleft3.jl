"""
https://codingbat.com/prob/p185139
Array-1 > rotateLeft3

Given an array of ints length 3, return an array with the elements "rotated left" so {1, 2, 3} yields {2, 3, 1}.

rotateleft3([1, 2, 3]) → [2, 3, 1]
rotateleft3([5, 11, 9]) → [11, 9, 5]
rotateleft3([7, 0, 0]) → [0, 0, 7]
"""
function rotateleft3(A)
    return [A[2:end]; A[1]]
end

using Test
function test()
    @testset begin
        @test rotateleft3([1, 2, 3]) == [2, 3, 1]
        @test rotateleft3([5, 11, 9]) == [11, 9, 5]
        @test rotateleft3([7, 0, 0]) == [0, 0, 7]
    end
    nothing
end

