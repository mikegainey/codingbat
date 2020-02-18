"""
Recursion-2 > groupSum6
https://codingbat.com/prob/p199368

Given an array of ints, is it possible to choose a group of some of the ints, beginning at the start index,
such that the group sums to the given target?
However, with the additional constraint that all 6's must be chosen. (No loops needed.)

groupsum6([5, 6, 2], 8) == true
groupsum6([5, 6, 2], 9) == false
groupsum6([5, 6, 2], 7) == false
"""

function groupsum6(loi, target)
    if length(loi) == 0
        target == 0
    else
        head = loi[1]
        tail = loi[2:end]

        if head == 6
            groupsum6(tail, target - 6)
        else
            groupsum6(tail, target - head) || groupsum6(tail, target)
        end
    end
end

using Test
function test()
    @testset begin
        @test groupsum6([5, 6, 2], 8) == true
        @test groupsum6([5, 6, 2], 9) == false
        @test groupsum6([5, 6, 2], 7) == false
    end
    nothing
end
