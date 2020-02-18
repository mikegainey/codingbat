"""
Recursion-2 > split53
https://codingbat.com/prob/p168295

Given an array of ints, is it possible to divide the ints into two groups,
so that the sum of the two groups is the same, with these constraints:
all the values that are multiple of 5 must be in one group,
and all the values that are a multiple of 3 (and not a multiple of 5) must be in the other. (No loops needed.)

split53([1, 1]) == true
split53([1, 1, 1]) == false
split53([2, 4, 2]) == true
"""
function split53(loi, mult3=[], mult5=[])
    if length(loi) == 0
        if length(mult3) > 0 && length(mult5) > 0
            balanced = sum(mult3) == sum(mult5)
            mult3check = any(x -> x % 3 == 0, mult5) # are there any multiples of 3 in mult5? (hope not)
            mult5check = any(x -> x % 5 == 0, mult3) # are there any multiples of 5 in mult3? (hope not)

            balanced && !mult3check && !mult5check
        else
            false
        end
    else
        head = loi[1]
        tail = loi[2:end]

        split53(tail, vcat(mult3, head), mult5) || split53(tail, mult3, vcat(mult5, head))
    end
end

using Test
function test()
    @testset begin
        @test split53([1, 1]) == true
        @test split53([1, 1, 1]) == false
        @test split53([2, 4, 2]) == true
    end
    nothing
end
