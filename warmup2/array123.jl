"""
https://codingbat.com/prob/p136041
Warmup-2 > array123

Given an array of ints, return true if the sequence of numbers 1, 2, 3 appears in the array somewhere.

array123([1, 1, 2, 3, 1]) → true
array123([1, 1, 2, 4, 1]) → false
array123([1, 1, 2, 1, 2, 3]) → true
"""
function array123(nums)
    for i in 1 : length(nums) -2
        if nums[i:i+2] == [1,2,3]
            return true
        end
    end
    return false
end

function test()
    @show(array123([1, 1, 2, 3, 1]))
    @show(array123([1, 1, 2, 4, 1]))
    @show(array123([1, 1, 2, 1, 2, 3]))
    nothing
end
