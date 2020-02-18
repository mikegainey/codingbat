"""
Recursion-2 > groupNoAdj
https://codingbat.com/prob/p169605

Given an array of ints, is it possible to choose a group of some of the ints,
such that the group sums to the given target with this additional constraint:
If a value in the array is chosen to be in the group, the value immediately following it in the array must not be chosen.
(No loops needed.)

groupnoadj([2, 5, 10, 4], 12) == true
groupnoadj([2, 5, 10, 4], 14) == false
groupnoadj([2, 5, 10, 4], 7) == false
"""
function groupnoadj(loi, target)
    if length(loi) == 0
        target == 0
    else
        head = loi[1]

        groupnoadj(loi[3:end], target - head) || groupnoadj(loi[2:end], target)
    end
end

using Test
function test()
    @testset begin
        @test groupnoadj([2, 5, 10, 4], 12) == true
        @test groupnoadj([2, 5, 10, 4], 14) == false
        @test groupnoadj([2, 5, 10, 4], 7) == false
    end
    nothing
end
