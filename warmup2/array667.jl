"""
https://codingbat.com/prob/p110019
Warmup-2 > array667

Given an array of ints, return the number of times that two 6's are next to each other in the array.
Also count instances where the second "6" is actually a 7.

array667([6, 6, 2]) → 1
array667([6, 6, 2, 6]) → 1
array667([6, 7, 2, 6]) → 1
"""
function array667(nums)
    count = 0
    for i in 1 : length(nums) - 1
        if nums[i] == 6 && nums[i+1] in [6, 7]
            count += 1
        end
    end
    return count
end

function test()
    @show(array667([6, 6, 2]))
    @show(array667([2, 6, 6]))
    @show(array667([2, 6, 5]))
    @show(array667([6, 6, 2, 6]))
    @show(array667([2, 6, 7, 2, 6, 6]))
    nothing
end

