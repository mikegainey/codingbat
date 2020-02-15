"""
https://codingbat.com/prob/p190968
Array-1 > sum2

Given an array of ints, return the sum of the first 2 elements in the array. If the array length is less than 2, just sum up the elements that exist, returning 0 if the array is length 0.

sum2([1, 2, 3]) → 3
sum2([1, 1]) → 2
sum2([1, 1, 1, 1]) → 2
"""
function sum2(A)
    acc = 0
    for (i, a) in enumerate(A)
        i ≤ 2 ? acc += a : break
    end
    return acc
end

using Test
function test()
    @testset begin
        @test sum2([1, 2, 3]) == 3
        @test sum2([1, 1]) == 2
        @test sum2([1, 1, 1, 1]) == 2
    end
    nothing
end
