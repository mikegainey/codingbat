"""
https://codingbat.com/prob/p191363
Logic-2 > makeChocolate

We want make a package of goal kilos of chocolate.
We have small bars (1 kilo each) and big bars (5 kilos each).
Return the number of small bars to use, assuming we always use big bars before small bars.
Return -1 if it can't be done.

makechocolate(4, 1, 9) == 4
makechocolate(4, 1, 10) == -1
makechocolate(4, 1, 7) == 2
"""
function makechocolate(small, big, goal)
    smallneeded = goal - 5 * big
    if small - smallneeded ≥ 0
        return smallneeded
    else
        return -1
    end
end

using Test
function test()
    @testset begin
        @test makechocolate(4, 1, 9) == 4
        @test makechocolate(4, 1, 10) == -1
        @test makechocolate(4, 1, 7) == 2
    end
    nothing
end
