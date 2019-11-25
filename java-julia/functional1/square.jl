"""
https://codingbat.com/prob/p139586
Functional-1 > square

Given a list of integers, return a list where each integer is multiplied with itself.

square([1, 2, 3]) == [1, 4, 9]
square([6, 8, -6, -8, 1]) == [36, 64, 36, 64, 1]
square([]) == []
"""
function square(loi)
    return [i*i for i in loi]
end

using Test
function test()
    @testset begin
        @test square([1, 2, 3]) == [1, 4, 9]
        @test square([6, 8, -6, -8, 1]) == [36, 64, 36, 64, 1]
        @test square([]) == []
    end
    nothing
end
