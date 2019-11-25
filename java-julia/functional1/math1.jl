"""
https://codingbat.com/prob/p103869
Functional-1 > math1

Given a list of integers, return a list where each integer is added to 1 and the result is multiplied by 10.

math1([1, 2, 3]) == [20, 30, 40]
math1([6, 8, 6, 8, 1]) == [70, 90, 70, 90, 20]
math1([10]) == [110]
"""
function math1(loi)
    return [10(x+1) for x in loi]
end

using Test
function test()
    @testset begin
        @test @show math1([1, 2, 3]) == [20, 30, 40]
        @test @show math1([6, 8, 6, 8, 1]) == [70, 90, 70, 90, 20]
        @test @show math1([10]) == [110]
    end
    nothing
end

