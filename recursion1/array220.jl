"""
https://codingbat.com/prob/p173469
Recursion-1 > array220

Given an array of ints,
compute recursively if the array contains somewhere a value followed in the array by that value times 10.
We'll use the convention of considering only the part of the array that begins at the given index.
In this way, a recursive call can pass index+1 to move down the array. The initial call will pass in index as 0.

array220([1, 2, 20], 1) == true
array220([3, 30], 1) == true
array220([3], 1) == false
"""
function array220(ns, x)
    if x == length(ns)
        return false
    else
        if ns[x] * 10 == ns[x+1]
            return true
        else
            array220(ns, x+1)
        end
    end
end

using Test
function test()
    @testset begin
        @test array220([1, 2, 20], 1) == true
        @test array220([3, 30], 1) == true
        @test array220([3], 1) == false
    end
    nothing
end

test()
