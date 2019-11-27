"""
https://codingbat.com/prob/p132748
Functional-2 > square56

Given a list of integers, return a list of those numbers squared and the product added to 10,
omitting any of the resulting numbers that end in 5 or 6.

square56([3, 1, 4]) == [19, 11]
square56([1]) == [11]
square56([2]) == [14]
"""
function square56(loi)
    step1 = (x -> x^2 + 10).(loi)
    step2 = filter(x -> x % 10 ∉ [5, 6], step1)
end

using Test
function test()
    @testset begin
        @test square56([3, 1, 4]) == [19, 11]
        @test square56([1]) == [11]
        @test square56([2]) == [14]
    end
    nothing
end
