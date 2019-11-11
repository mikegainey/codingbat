"""
https://codingbat.com/prob/p186031
Warmup-2 > arrayFront9

Given an array of ints, return true if one of the first 4 elements in the array is a 9.
The array length may be less than 4.

arrayFront9([1, 2, 9, 3, 4]) → true
arrayFront9([1, 2, 3, 4, 9]) → false
arrayFront9([1, 2, 3, 4, 5]) → false
"""
function arrayfront9(nums)
    endx = min(4, length(nums))
    return 9 in nums[1:endx]
end

function test()
    @show(arrayfront9([1, 2, 9, 3, 4]))
    @show(arrayfront9([1, 2, 3, 4, 9]))
    @show(arrayfront9([1, 2, 3, 4, 5]))
    @show(arrayfront9([1, 2, 3]))
    @show(arrayfront9([1, 9, 3]))
    nothing
end

