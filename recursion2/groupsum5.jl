"""
https://codingbat.com/prob/p138907
Recursion-2 > groupSum5

Given an array of ints, is it possible to choose a group of some of the ints,
such that the group sums to the given target with these additional constraints:
all multiples of 5 in the array must be included in the group.
If the value immediately following a multiple of 5 is 1, it must not be chosen. (No loops needed.)

groupsum5([2, 5, 10, 4], 19) == true
groupsum5([2, 5, 10, 4], 17) == true
groupsum5([2, 5, 10, 4], 12) == false
"""
function groupsum5(loi, target)
    if length(loi) == 0
        return target == 0
    end

    head = loi[1]
    tail = loi[2:end]

    if head % 5 != 0
        chosen = groupsum5(tail, target - head)
        notchosen = groupsum5(tail, target)
        return chosen || notchosen
    else
        @assert head % 5 == 0
        if loi[2] != 1
            return groupsum5(tail, target - head)
        else
            @assert loi[2] == 1
            return groupsum5(loi[3:end], target - head)
        end
    end
end

using Test
function test()
    @testset begin
        @test groupsum5([2, 5, 10, 4], 19) == true
        @test groupsum5([2, 5, 10, 4], 17) == true
        @test groupsum5([2, 5, 10, 4], 12) == false
        @test groupsum5([2, 5, 10, 1, 4], 16) == false
        @test groupsum5([2, 5, 10, 4, 1], 16) == true
    end
    nothing
end

