"""
https://codingbat.com/prob/p194781
Recursion-1 > triangle

We have triangle made of blocks.
The topmost row has 1 block, the next row down has 2 blocks, the next row has 3 blocks, and so on.
Compute recursively (no loops or multiplication) the total number of blocks in such a triangle with the given number of rows.

triangle(0) == 0
triangle(1) == 1
triangle(2) == 3
"""
function triangle(n)
    if n == 0
        return 0
    else
        n + triangle(n-1)
    end
end

using Test
function test()
    @testset begin
        @test triangle(0) == 0
        @test triangle(1) == 1
        @test triangle(2) == 3
    end
    nothing
end

test()
