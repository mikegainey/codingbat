"""
https://codingbat.com/prob/p100246
Array-2 > pre4

Given a non-empty array of ints,
return a new array containing the elements from the original array that come before the first 4 in the original array.
The original array will contain at least one 4. Note that it is valid in java to create an array of length 0.

pre4([1, 2, 4, 1]) == [1, 2]
pre4([3, 1, 4]) == [3, 1]
pre4([1, 4, 4]) == [1]
"""
function pre4(ns)
    for x in 1 : length(ns)
        if ns[x] == 4
            return ns[1:x-1]
        end
    end
end

using Test
function test()
    @testset begin
        @test pre4([1, 2, 4, 1]) == [1, 2]
        @test pre4([3, 1, 4]) == [3, 1]
        @test pre4([1, 4, 4]) == [1]
    end
    nothing
end

test()
