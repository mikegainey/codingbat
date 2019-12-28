"""
https://codingbat.com/prob/p159339
Array-3 > fix34

Return an array that contains exactly the same numbers as the given array,
but rearranged so that every 3 is immediately followed by a 4.  Do not move the 3's, but every other number may move.
The array contains the same number of 3's and 4's, every 3 has a number after it that is not a 3,
and a 3 appears in the array before any 4.

fix34([1, 3, 1, 4]) == [1, 3, 4, 1]
fix34([1, 3, 1, 4, 4, 3, 1]) == [1, 3, 4, 1, 1, 3, 4]
fix34([3, 2, 2, 4]) == [3, 4, 2, 2]
"""
function fix34a(ns)
    threexs = [] # the indices of the 3's
    fours = 0    # the number of 4's (just to verify 3's and 4's are evenly matched)
    others = []  # other numbers
    len = length(ns)
    for x in 1 : len
        if ns[x] == 3
            push!(threexs, x)
        elseif ns[x] == 4
            fours += 1
        else
            push!(others, ns[x])
        end
    end
    @assert length(threexs) == fours
    output = []
    x = 1
    while x ≤ len
        if x in threexs
            push!(output, 3)
            push!(output, 4)
            x += 2
        else
            push!(output, popfirst!(others))
            x += 1
        end
    end
    output
end

using Test
function test()
    @testset begin
        @test fix34a([1, 3, 1, 4]) == [1, 3, 4, 1]
        @test fix34a([1, 3, 1, 4, 4, 3, 1]) == [1, 3, 4, 1, 1, 3, 4]
        @test fix34a([3, 2, 2, 4]) == [3, 4, 2, 2]
    end
    nothing
end

test()
