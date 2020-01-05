"""
https://codingbat.com/prob/p183649
Recursion-1 > bunnyEars

We have a number of bunnies and each bunny has two big floppy ears.
We want to compute the total number of ears across all the bunnies recursively (without loops or multiplication).

bunnyears(0) == 0
bunnyears(1) == 2
bunnyears(2) == 4
"""
function bunnyears(n)
    if n == 0
        return 0
    else
        return 2 + bunnyears(n-1)
    end
end

using Test
function test()
    @testset begin
        @test bunnyears(0) == 0
        @test bunnyears(1) == 2
        @test bunnyears(2) == 4
    end
    nothing
end

test()
