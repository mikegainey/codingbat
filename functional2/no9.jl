"""
https://codingbat.com/prob/p124510
Functional-2 > no9

Given a list of non-negative integers, return a list of those numbers except omitting any that end with 9. (Note: % by 10)

no9([1, 2, 19]) == [1, 2]
no9([9, 19, 29, 3]) == [3]
no9([1, 2, 3]) == [1, 2, 3]
"""
function no9(loi)
    filter(x -> x % 10 ≠ 9, loi)
end

using Test
function test()
    @testset begin
        @test @show no9([1, 2, 19]) == [1, 2]
        @test @show no9([9, 19, 29, 3]) == [3]
        @test @show no9([1, 2, 3]) == [1, 2, 3]
    end
    nothing
end

