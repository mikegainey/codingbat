"""
https://codingbat.com/prob/p170221
Warmup-2 > noTriples

Given an array of ints, we'll say that a triple is a value appearing 3 times in a row in the array.
Return true if the array does not contain any triples.

noTriples([1, 1, 2, 2, 1]) → true
noTriples([1, 1, 2, 2, 2, 1]) → false
noTriples([1, 1, 1, 2, 2, 2, 1]) → false
"""
function notriples(nums)
    count = 0
    lastnum = nothing
    for i in 1 : length(nums)
        if nums[i] == lastnum
            count += 1
        else
            count = 1
            lastnum = nums[i]
        end
        if count == 3
            return false
        end
    end
    return true
end

function test()
    @show(notriples([1, 1, 2, 2, 1]))
    @show(notriples([1, 1, 2, 2, 2, 1]))
    @show(notriples([1, 1, 1, 2, 2, 2, 1]))
    nothing
end
