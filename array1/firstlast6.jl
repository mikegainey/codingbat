"""
https://codingbat.com/prob/p185685
Array-1 > firstLast6

Given an array of ints, return true if 6 appears as either the first or last element in the array.
The array will be length 1 or more.

firstLast6([1, 2, 6]) → true
firstLast6([6, 1, 2, 3]) → true
firstLast6([13, 6, 1, 2, 3]) → false
"""
function firstlast6(a)
    return a[1] == 6 || a[end] == 6
end

using Test
function test()
    @testset begin
        @test firstlast6([1, 2, 6]) == true
        @test firstlast6([6, 1, 2, 3]) == true
        @test firstlast6([13, 6, 1, 2, 3]) == false
    end
    nothing
end
