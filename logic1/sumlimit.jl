"""
https://codingbat.com/prob/p118077
Logic-1 > sumLimit

Given 2 non-negative ints, a and b, return their sum, so long as the sum has the same number of digits as a.
If the sum has more digits than a, just return a without b.
(Note: one way to compute the number of digits of a non-negative int n is to convert it to a string
with String.valueOf(n) and then check the length of the string.)

sumLimit(2, 3) → 5
sumLimit(8, 3) → 8
sumLimit(8, 1) → 9
"""
function sumlimit(a, b)
    absum = a + b
    if length(string(absum)) == length(string(a))
        return absum
    else
        return a
    end
end

using Test
function test()
    @testset begin
        @test sumlimit(2, 3) == 5
        @test sumlimit(8, 3) == 8
        @test sumlimit(8, 1) == 9
    end
    nothing
end
