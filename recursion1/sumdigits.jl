"""
https://codingbat.com/prob/p163932
Recursion-1 > sumDigits

Given a non-negative int n, return the sum of its digits recursively (no loops).
Note that mod (%) by 10 yields the rightmost digit (126 % 10 is 6),
while divide (/) by 10 removes the rightmost digit (126 / 10 is 12).

sumdigits(126) == 9
sumdigits(49) == 13
sumdigits(12) == 3
"""
function sumdigits(n)
    if n == 0
        return 0
    else
        (n, ones) = divrem(n, 10)
        ones + sumdigits(n)
    end
end

using Test
function test()
    @testset begin
        @test sumdigits(126) == 9
        @test sumdigits(49) == 13
        @test sumdigits(12) == 3
    end
    nothing
end

test()
