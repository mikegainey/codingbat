"""
https://codingbat.com/prob/p154669
Recursion-1 > factorial

Given n of 1 or more, return the factorial of n, which is n * (n-1) * (n-2) ... 1.
Compute the result recursively (without loops).

fact(1) == 1
fact(2) == 2
fact(3) == 6
"""
function fact(n)
    if n == 1
        return 1
    else
        return n * fact(n-1)
    end
end

using Test
function test()
    @testset begin
        @test fact(1) == 1
        @test fact(2) == 2
        @test fact(3) == 6
    end
    nothing
end

test()
