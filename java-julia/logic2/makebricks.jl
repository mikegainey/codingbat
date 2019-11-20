"""
https://codingbat.com/prob/p183562
Logic-2 > makeBricks

We want to make a row of bricks that is goal inches long.
We have a number of small bricks (1 inch each) and big bricks (5 inches each).
Return true if it is possible to make the goal by choosing from the given bricks.
This is a little harder than it looks and can be done without any loops. See also: Introduction to MakeBricks

makeBricks(3, 1, 8) → true
makeBricks(3, 1, 9) → false
makeBricks(3, 2, 10) → true
"""
function makebricks(small, big, goal)
    big2 = big + div(small, 5)
    small2 = small % 5
    bigneeded, smallneeded = divrem(goal, 5)
    return big2 ≥ bigneeded && small2 ≥ smallneeded
end

using Test
function test()
    @testset begin
        @test makebricks(3, 1, 8) == true
        @test makebricks(3, 1, 9) == false
        @test makebricks(3, 2, 10) == true
        @test makebricks(17, 1, 10) == true
    end
    nothing
end
