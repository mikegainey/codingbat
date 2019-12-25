"""
https://codingbat.com/prob/p102145
Array-2 > twoTwo

Given an array of ints, return true if every 2 that appears in the array is next to another 2.

twotwo([4, 2, 2, 3]) == true
twotwo([2, 2, 4]) == true
twotwo([2, 2, 4, 2]) == false
"""
function twotwo(ns)
    if ns[1] == 2 && ns[2] ≠ 2 # check the first element
        return false
    elseif ns[end] == 2 && ns[end-1] ≠ 2 # check the last element
        return false
    end

    for x in 1 : length(ns) - 2
        left = ns[x]
        middle = ns[x+1]
        right = ns[x+2]
        if middle == 2
            if left ≠ 2 && right ≠ 2
                return false
            end
        end
    end
    return true
end

@show twotwo([4, 2, 2, 3])
@show twotwo([2, 2, 4])
@show twotwo([2, 2, 4, 2])
