"""
https://codingbat.com/prob/p175763
Array-1 > sum3

Given an array of ints length 3, return the sum of all the elements.

sum3([1, 2, 3]) → 6
sum3([5, 11, 2]) → 18
sum3([7, 0, 0]) → 7
"""
function sum3(A)
    return sum(A)
end

using Test
function test()
    @testset begin
        @test sum3([1, 2, 3]) == 6
        @test sum3([5, 11, 2]) == 18
        @test sum3([7, 0, 0]) == 7
    end
    nothing
end

