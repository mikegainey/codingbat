"""
https://codingbat.com/prob/p192383
Recursion-1 > count8

Given a non-negative int n, compute recursively (no loops) the count of the occurrences of 8 as a digit,
except that an 8 with another 8 immediately to its left counts double, so 8818 yields 4.
Note that mod (%) by 10 yields the rightmost digit (126 % 10 is 6),
while divide (/) by 10 removes the rightmost digit (126 / 10 is 12).

count8(8) == 1
count8(818) == 2
count8(8818) == 4
"""
function count8(n)
    if n == 0
        return 0
    else
        if n % 100 == 88
            return 3 + count8(n ÷ 100)
        elseif n % 10 == 8
            return 1 + count8(n ÷ 10)
        else
            return 0 + count8(n ÷ 10)
        end
    end
end

using Test
function test()
    @testset begin
        @test count8(8) == 1
        @test count8(818) == 2
        @test count8(8818) == 4
    end
    nothing
end

test()
