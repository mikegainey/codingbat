"""
https://codingbat.com/prob/p103456
Functional-2 > noNeg

Given a list of integers, return a list of the integers, omitting any that are less than 0.

noneg([1, -2]) == [1]
noneg([-3, -3, 3, 3]) == [3, 3]
noneg([-1, -1, -1]) == []
"""
function noneg(loi)
    return filter(x -> x ≥ 0, loi)
end

using Test
function test()
    @testset begin
        @test @show noneg([1, -2]) == [1]
        @test @show noneg([-3, -3, 3, 3]) == [3, 3]
        @test @show noneg([-1, -1, -1]) == []
    end
    nothing
end
