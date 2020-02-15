"""
https://codingbat.com/prob/p135988
Recursion-1 > array11

Given an array of ints, compute recursively the number of times that the value 11 appears in the array.
We'll use the convention of considering only the part of the array that begins at the given index.
In this way, a recursive call can pass index+1 to move down the array. The initial call will pass in index as 1.
Note:  I changed the initial index to 1 because Julia uses 1-based indexing.

array11([1, 2, 11], 1) == 1
array11([11, 11], 1) == 2
array11([1, 2, 3, 4], 1) == 0
"""
function array11(ns, index)
    if index > length(ns)
        return 0
    else
        if ns[index] == 11
            1 + array11(ns, index+1)
        else
            0 + array11(ns, index+1)
        end
    end
end

using Test
function test()
    @testset begin
        @test array11([1, 2, 11], 1) == 1
        @test array11([11, 11], 1) == 2
        @test array11([1, 2, 3, 4], 1) == 0
    end
    nothing
end

test()
