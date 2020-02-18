"""
Recursion-2 > groupSumClump
https://codingbat.com/prob/p105136

Given an array of ints, is it possible to choose a group of some of the ints, such that the group sums to the given target,
with this additional constraint: if there are numbers in the array that are adjacent and the identical value,
they must either all be chosen, or none of them chosen.
For example, with the array {1, 2, 2, 2, 5, 2}, either all three 2's in the middle must be chosen or not, all as a group.
(one loop can be used to find the extent of the identical values).

note: I didn't read the instructions closely enough. My algorithm chooses or doesn't choose all identical values
with no regard to whether or not they are adjacent. oops!

groupsumclump([2, 4, 8], 10) == true
groupsumclump([1, 2, 4, 8, 1], 14) == true
groupsumclump([2, 4, 4, 8], 14) == false
"""
function groupsumclump(loi, target)
    if length(loi) == 0
        target == 0
    else
        headnums = filter(x -> x == loi[1], loi) |> sum
        rest = filter(x -> x != loi[1], loi)

        groupsumclump(rest, target - headnums) || groupsumclump(rest, target)
    end
end

using Test
function test()
    @testset begin
        @test groupsumclump([2, 4, 8], 10) == true
        @test groupsumclump([1, 2, 4, 8, 1], 14) == true
        @test groupsumclump([2, 4, 4, 8], 14) == false
    end
    nothing
end
