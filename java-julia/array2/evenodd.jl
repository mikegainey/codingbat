"""
https://codingbat.com/prob/p105771
Array-2 > evenOdd

Return an array that contains the exact same numbers as the given array,
but rearranged so that all the even numbers come before all the odd numbers.
Other than that, the numbers can be in any order. You may modify and return the given array, or make a new array.

evenodd([1, 0, 1, 0, 0, 1, 1]) == [0, 0, 0, 1, 1, 1, 1]
evenodd([3, 3, 2]) == [2, 3, 3]
evenodd([2, 2, 2]) == [2, 2, 2]
"""
function evenodd(ns, even=[], odd=[])
    if length(ns) == 0
        return vcat(even, odd)
    else
        head = ns[1]
        tail = ns[2:end]
        if iseven(head)
            evenodd(tail, vcat(even, head), odd)
        else
            evenodd(tail, even, vcat(odd, head))
        end
    end
end

using Test
function test()
    @testset begin
        @test evenodd([1, 0, 1, 0, 0, 1, 1]) == [0, 0, 0, 1, 1, 1, 1]
        @test evenodd([3, 3, 2]) == [2, 3, 3]
        @test evenodd([2, 2, 2]) == [2, 2, 2]
    end
    nothing
end

test()
