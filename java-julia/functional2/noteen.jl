"""
https://codingbat.com/prob/p137274
Functional-2 > noTeen

Given a list of integers, return a list of those numbers, omitting any that are between 13 and 19 inclusive.

noteen([12, 13, 19, 20]) == [12, 20]
noteen([1, 14, 1]) == [1, 1]
noteen([15]) == []
"""
function noteen(loi)
    filter(x -> x ∉ 13:19, loi)
end

using Test
function test()
    @testset begin
        @test noteen([12, 13, 19, 20]) == [12, 20]
        @test noteen([1, 14, 1]) == [1, 1]
        @test noteen([15]) == []
    end
    nothing
end

