"""
https://codingbat.com/prob/p169506
Array-2 > notAlone

We'll say that an element in an array is "alone" if there are values before and after it,
and those values are different from it.
Return a version of the given array where every instance of the given value which is alone is replaced
by whichever value to its left or right is larger.

notalone([1, 2, 3], 2) == [1, 3, 3]
notalone([1, 2, 3, 2, 5, 2], 2) == [1, 3, 3, 5, 5, 2]
notalone([3, 4], 3) == [3, 4]
"""
function notalone(ns, val, output=ns[1:1])
    if length(ns) < 3
        return vcat(output, ns[end])
    else
        left, middle, right = ns[1:3]
        tail = ns[2:end]
        if middle == val && left ≠ middle ≠ right # if alone
            notalone(tail, val, vcat(output, maximum(ns[1:3])))
        else
            notalone(tail, val, vcat(output, middle))
        end
    end
end

using Test
function test()
    @testset begin
        @test notalone([1, 2, 3], 2) == [1, 3, 3]
        @test notalone([1, 2, 3, 2, 5, 2], 2) == [1, 3, 3, 5, 5, 2]
        @test notalone([3, 4], 3) == [3, 4]
    end
    nothing
end

test()
