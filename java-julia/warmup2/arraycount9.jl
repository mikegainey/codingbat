"""
https://codingbat.com/prob/p184031
Warmup-2 > arrayCount9

Given an array of ints, return the number of 9's in the array.

arrayCount9([1, 2, 9]) → 1
arrayCount9([1, 9, 9]) → 2
arrayCount9([1, 9, 9, 3, 9]) → 3
"""
function arraycount9(array)
    count = 0
    for element in array
        if element == 9
            count += 1
        end
    end
    count
end

function test()
    @show(arraycount9([1, 2, 9]))
    @show(arraycount9([1, 9, 9]))
    @show(arraycount9([1, 9, 9, 3, 9]))
    nothing
end

