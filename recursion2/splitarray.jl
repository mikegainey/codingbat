"""
Recursion-2 > splitArray
https://codingbat.com/prob/p185204

Given an array of ints, is it possible to divide the ints into two groups, so that the sums of the two groups are the same.
Every int must be in one group or the other.

splitarray([2, 2]) == true
splitarray([2, 3]) == false
splitarray([5, 2, 3]) == true
"""
function splitarray(loi, left=[], right=[])
    if length(loi) == 0
        if length(left) > 0 && length(right) > 0
            sum(left) == sum(right)
        else
            false # loi is empty, but left and/or right are also empty
        end
    else
        head = loi[1]
        tail = loi[2:end]

        splitarray(tail, vcat(left, head), right) || splitarray(tail, left, vcat(right, head))
    end
end

using Test
function test()
    @testset begin
        @test splitarray([2, 2]) == true
        @test splitarray([2, 3]) == false
        @test splitarray([5, 2, 3]) == true
    end
    nothing
end

