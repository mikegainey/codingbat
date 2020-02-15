"""
https://codingbat.com/prob/p148198
Functional-2 > two2

Given a list of non-negative integers, return a list of those numbers multiplied by 2,
omitting any of the resulting numbers that end in 2.

two2([1, 2, 3]) == [4, 6]
two2([2, 6, 11]) == [4]
two2([0]) == [0]
"""
function two2(loi)
    mul2 = [2i for i in loi]
    [x for x in mul2 if x % 10 ≠ 2]
end

using Test
function test()
    @testset begin
        @test two2([1, 2, 3]) == [4, 6]
        @test two2([2, 6, 11]) == [4]
        @test two2([0]) == [0]
    end
    nothing
end
