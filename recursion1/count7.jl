"""
https://codingbat.com/prob/p101409
Recursion-1 > count7

Given a non-negative int n, return the count of the occurrences of 7 as a digit, so for example 717 yields 2. (no loops).
Note that mod (%) by 10 yields the rightmost digit (126 % 10 is 6),
while divide (/) by 10 removes the rightmost digit (126 / 10 is 12).

count7(717) == 2
count7(7) == 1
count7(123) == 0
"""
function count7(n)
    if n == 0
        return 0
    else
        (n, onesdigit) = divrem(n, 10)
        if onesdigit == 7
            1 + count7(n)
        else
            0 + count7(n)
        end
    end
end

using Test
function test()
    @testset begin
        @test count7(717) == 2
        @test count7(7) == 1
        @test count7(123) == 0
    end
    nothing
end

test()
