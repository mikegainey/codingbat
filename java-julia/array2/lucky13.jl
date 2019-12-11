"""
https://codingbat.com/prob/p194525
Array-2 > lucky13

Given an array of ints, return true if the array contains no 1's and no 3's.

lucky13([0, 2, 4]) == true
lucky13([1, 2, 3]) == false
lucky13([1, 2, 4]) == false
"""
function lucky13(xs)
    for x in xs
        if x == 1 || x == 3
            return false
        end
    end
    return true
end

using Test
function test()
    @testset begin
        @test lucky13([0, 2, 4]) == true
        @test lucky13([1, 2, 3]) == false
        @test lucky13([1, 2, 4]) == false
    end
    nothing
end

test()

