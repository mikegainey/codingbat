"""
https://codingbat.com/prob/p183071
Logic-1 > sortaSum

Given 2 ints, a and b, return their sum.
However, sums in the range 10..19 inclusive, are forbidden, so in that case just return 20.

sortaSum(3, 4) → 7
sortaSum(9, 4) → 20
sortaSum(10, 11) → 21
"""
function sortasum(a, b)
    realsum = a + b
    return 10 ≤ realsum ≤ 19 ? 20 : realsum
end

using Test
function test()
    @testset begin
        @test sortasum(3, 4) == 7
        @test sortasum(9, 4) == 20
        @test sortasum(10, 11) == 21
    end
    nothing
end
