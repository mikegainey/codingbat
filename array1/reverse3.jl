"""
https://codingbat.com/prob/p112409
Array-1 > reverse3

Given an array of ints length 3, return a new array with the elements in reverse order, so {1, 2, 3} becomes {3, 2, 1}.

reverse3([1, 2, 3]) → [3, 2, 1]
reverse3([5, 11, 9]) → [9, 11, 5]
reverse3([7, 0, 0]) → [0, 0, 7]
"""
function reverse3(array)
    array |> reverse
end

using Test
function test()
    @testset begin
        @test reverse3([1, 2, 3]) == [3, 2, 1]
        @test reverse3([5, 11, 9]) == [9, 11, 5]
        @test reverse3([7, 0, 0]) == [0, 0, 7]
    end
    nothing
end
