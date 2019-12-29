"""
https://codingbat.com/prob/p125819
Array-3 > fix45

(This is a slightly harder version of the fix34 problem.)
Return an array that contains exactly the same numbers as the given array,
but rearranged so that every 4 is immediately followed by a 5.
Do not move the 4's, but every other number may move.
The array contains the same number of 4's and 5's, and every 4 has a number after it that is not a 4.
In this version, 5's may appear anywhere in the original array.

fix45([5, 4, 9, 4, 9, 5]) == [9, 4, 5, 4, 5, 9]
fix45([1, 4, 1, 5]) == [1, 4, 5, 1]
fix45([1, 4, 1, 5, 5, 4, 1]) == [1, 4, 5, 1, 1, 4, 5]
"""
function fix45(ns)
    fourxs = []  # the indices of the 4's
    fives = 0    # the number of 5's (just to verify 4's and 5's are evenly matched)
    others = []  # other numbers
    len = length(ns)
    for x in 1 : len
        if ns[x] == 4
            push!(fourxs, x)
        elseif ns[x] == 5
            fives += 1
        else
            push!(others, ns[x])
        end
    end
    @assert length(fourxs) == fives
    output = []
    x = 1
    while x ≤ len
        if x in fourxs
            push!(output, 4)
            push!(output, 5)
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
        @test fix45([5, 4, 9, 4, 9, 5]) == [9, 4, 5, 4, 5, 9]
        @test fix45([1, 4, 1, 5]) == [1, 4, 5, 1]
        @test fix45([1, 4, 1, 5, 5, 4, 1]) == [1, 4, 5, 1, 1, 4, 5]
    end
    nothing
end

test()
