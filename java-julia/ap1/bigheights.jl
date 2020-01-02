"""
https://codingbat.com/prob/p197710
AP-1 > bigHeights

(A variation on the sumHeights problem.)
We have an array of heights, representing the altitude along a walking trail.
Given start/end indexes into the array,
return the number of "big" steps for a walk starting at the start index and ending at the end index.
We'll say that step is big if it is 5 or more up or down.
The start end end index will both be valid indexes into the array with start <= end.

bigheights([5, 3, 6, 7, 2], 2, 4) == 1
bigheights([5, 3, 6, 7, 2], 0, 1) == 0
bigheights([5, 3, 6, 7, 2], 0, 4) == 1
"""
function bigheights(heights, startx, endx)
    bigsteps = 0
    lastheight = nothing
    for height in heights[startx+1:endx+1]
        if lastheight ≠ nothing
            if abs(height - lastheight) ≥ 5
                bigsteps += 1
            end
        end
        lastheight = height
    end
    bigsteps
end

using Test
function test()
    @testset begin
        @test bigheights([5, 3, 6, 7, 2], 2, 4) == 1
        @test bigheights([5, 3, 6, 7, 2], 0, 1) == 0
        @test bigheights([5, 3, 6, 7, 2], 0, 4) == 1
    end
    nothing
end

test()
