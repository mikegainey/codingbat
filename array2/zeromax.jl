"""
https://codingbat.com/prob/p187050
Array-2 > zeroMax

Return a version of the given array where
each zero value in the array is replaced by the largest odd value to the right of the zero in the array.
If there is no odd value to the right of the zero, leave the zero as a zero.

zeromax([0, 5, 0, 3]) == [5, 5, 3, 3]
zeromax([0, 4, 0, 3]) == [3, 4, 3, 3]
zeromax([0, 1, 0]) == [1, 1, 0]
"""
function zeromax(ns, output=[])
    if length(ns) == 0
        return output
    else
        head = ns[1]
        tail = ns[2:end]
        if head == 0
            odds = filter(n -> n % 2 == 1, tail)
            if length(odds) > 0 # there is an odd number to the right
                zeromax(tail, vcat(output, maximum(odds)))
            else # no odd number to the right
                zeromax(tail, vcat(output, 0))
            end
        else # the head is not a zero
            zeromax(tail, vcat(output, head))
        end
    end
end

@show zeromax([0, 5, 0, 3]) == [5, 5, 3, 3]
@show zeromax([0, 4, 0, 3]) == [3, 4, 3, 3]
@show zeromax([0, 1, 0]) == [1, 1, 0]
