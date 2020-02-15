"""
https://codingbat.com/prob/p107330
Recursion-1 > bunnyEars2

We have bunnies standing in a line, numbered 1, 2, ... The odd bunnies (1, 3, ..) have the normal 2 ears.
The even bunnies (2, 4, ..) we'll say have 3 ears, because they each have a raised foot.
Recursively return the number of "ears" in the bunny line 1, 2, ... n (without loops or multiplication).

bunnyears2(0) == 0
bunnyears2(1) == 2
bunnyears2(2) == 5
"""
function bunnyears2(n)
    if n == 0
        return 0
    elseif n % 2 == 0 # n is even
        3 + bunnyears2(n-1)
    elseif n % 2 == 1 # n is odd
        2 + bunnyears2(n-1)
    else
        error("the if-elseif didn't catch all cases")
    end
end

using Test
function test()
    @testset begin
        @test bunnyears2(0) == 0
        @test bunnyears2(1) == 2
        @test bunnyears2(2) == 5
    end
    nothing
end

test()
