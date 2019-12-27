"""
https://codingbat.com/prob/p158767
Array-3 > canBalance

Given a non-empty array, return true if there is a place to split the array
so that the sum of the numbers on one side is equal to the sum of the numbers on the other side.

canbalance([1, 1, 1, 2, 1]) == true
canbalance([2, 1, 1, 2, 1]) == false
canbalance([10, 10]) == true
"""
function canbalance(ns)
    partialsums = []
    runningsum = 0
    for n in ns
        runningsum += n
        push!(partialsums, runningsum)
    end
    total = partialsums[end]
    if total % 2 == 1
        return false
    elseif (total ÷ 2) in partialsums
        return true
    else
        return false
    end
end

using Test
function test()
    @testset begin
        @test canbalance([1, 1, 1, 2, 1]) == true
        @test canbalance([2, 1, 1, 2, 1]) == false
        @test canbalance([10, 10]) == true
    end
    nothing
end

test()
