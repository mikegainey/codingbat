"""
https://codingbat.com/prob/p152194
Functional-1 > rightDigit

Given a list of non-negative integers, return an integer list of the rightmost digits. (Note: use %)

rightdigit([1, 22, 93]) == [1, 2, 3]
rightdigit([16, 8, 886, 8, 1]) == [6, 8, 6, 8, 1]
rightdigit([10, 0]) == [0, 0]
"""
function rightdigit(nnints)
    return map(x -> x % 10, nnints)
end

using Test
function test()
    @testset begin
        @test rightdigit([1, 22, 93]) == [1, 2, 3]
        @test rightdigit([16, 8, 886, 8, 1]) == [6, 8, 6, 8, 1]
        @test rightdigit([10, 0]) == [0, 0]
    end
    nothing
end

