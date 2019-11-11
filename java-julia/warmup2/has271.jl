"""
https://codingbat.com/prob/p167430
Warmup-2 > has271

Given an array of ints, return true if it contains a 2, 7, 1 pattern:
a value, followed by the value plus 5, followed by the value minus 1.
Additionally the 271 counts even if the "1" differs by 2 or less from the correct value.

has271([1, 2, 7, 1]) → true
has271([1, 2, 8, 1]) → false
has271([2, 7, 1]) → true
"""
function has271a(xs)
    for i in 1 : length(xs) - 2
        if xs[i+1] == xs[i] + 5
            if (xs[i] - 3) ≤ xs[i+2] ≤ (xs[i] + 1)
                return true
            end
        end
    end
    return false
end

function has271b(xs)
    if length(xs) < 3
        return false
    elseif (xs[2] == xs[1] + 5) && ((xs[1] - 3) ≤ xs[3] ≤ (xs[1] + 1))
        return true
    else
        has271b(xs[2:end])
    end
end


function test()
    @show(has271a([1, 2, 7, 1]))
    @show(has271a([1, 2, 7, 2])) # the "1" differs by 1
    @show(has271a([1, 2, 7, 3])) # the "1" differs by 2
    @show(has271a([1, 2, 7, 4])) # the "1" differs by 3
    @show(has271a([1, 2, 7, 1])) # the "1" differs by 0
    @show(has271a([1, 2, 7, 0])) # the "1" differs by -1
    @show(has271a([1, 2, 7, -1])) # the "1" differs by -2
    @show(has271a([1, 2, 7, -2])) # the "1" differs by -3
    @show(has271a([1, 2, 8, 1]))
    @show(has271a([2, 7, 1]))
    @show(has271a([3, 8, 2]))
    @show(has271a([4, 9, 3]))
    @show(has271b([1, 2, 7, 1]))
    @show(has271b([1, 2, 7, 2])) # the "1" differs by 1
    @show(has271b([1, 2, 7, 3])) # the "1" differs by 2
    @show(has271b([1, 2, 7, 4])) # the "1" differs by 3
    @show(has271b([1, 2, 7, 1])) # the "1" differs by 0
    @show(has271b([1, 2, 7, 0])) # the "1" differs by -1
    @show(has271b([1, 2, 7, -1])) # the "1" differs by -2
    @show(has271b([1, 2, 7, -2])) # the "1" differs by -3
    @show(has271b([1, 2, 8, 1]))
    @show(has271b([2, 7, 1]))
    @show(has271b([3, 8, 2]))
    @show(has271b([4, 9, 3]))
    nothing
end


