"""
https://codingbat.com/prob/p108997
Recursion-1 > array6

Given an array of ints, compute recursively if the array contains a 6.
We'll use the convention of considering only the part of the array that begins at the given index.
In this way, a recursive call can pass index+1 to move down the array. The initial call will pass in index as 0.

array6([1, 6, 4], 1) == true
array6([1, 4], 1) == false
array6([6], 1) == true
"""
function array6(ns, index)
    if index > length(ns)
        return false
    else
        if ns[index] == 6
            return true
        else
            array6(ns, index+1)
        end
    end
end

using Test
function test()
    @testset begin
        @test array6([1, 6, 4], 1) == true
        @test array6([1, 4], 1) == false
        @test array6([6], 1) == true
    end
    nothing
end

test()
