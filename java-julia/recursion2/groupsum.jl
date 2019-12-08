"""
https://codingbat.com/prob/p145416
Recursion-2 > groupSum

Given an array of ints, is it possible to choose a group of some of the ints, such that the group sums
to the given target? This is a classic backtracking recursion problem. Once you understand
the recursive backtracking strategy in this problem, you can use the same pattern for many problems
to search a space of choices. Rather than looking at the whole array, our convention is
to consider the part of the array starting at index start and continuing to the end of the array.
The caller can specify the whole array simply by passing start as 0.
No loops are needed -- the recursive calls progress down the array.

groupsum(1, [2, 4, 8], 10) == true
groupsum(1, [2, 4, 8], 14) == true
groupsum(1, [2, 4, 8], 9) == false
"""
function groupsum(nums, target, start=1)
    println(nums[start:end], " -> ", target, " ?")
    if length(nums[start:end]) == 1
        return target == 0 || target == nums[start]
    else
        # is the element at index start chosen?
        # println("  if ", nums[start], " is chosen: ", nums[start+1:end], " -> ", target - nums[start])
        chosen = groupsum(nums, target - nums[start], start + 1)
        # println("  if ", nums[start], " is not chosen: ", nums[start+1:end], " -> ", target)
        notchosen = groupsum(nums, target, start + 1)
        return chosen || notchosen
    end
end

using Test
function test()
    @testset begin
        @test groupsum([2, 4, 8], 10) == true
        @test groupsum([2, 4, 8], 14) == true
        @test groupsum([2, 4, 8], 9) == false
    end
    # @show groupsum(1, [2, 4, 8], 10)
    nothing
end
