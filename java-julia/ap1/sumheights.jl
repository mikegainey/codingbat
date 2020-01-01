"""
https://codingbat.com/prob/p148138
AP-1 > sumHeights

We have an array of heights, representing the altitude along a walking trail. Given start/end indexes into the array,
return the sum of the changes for a walk beginning at the start index and ending at the end index.
For example, with the heights {5, 3, 6, 7, 2} and start=2, end=4 yields a sum of 1 + 5 = 6.
The start end end index will both be valid indexes into the array with start <= end.

sumheights([5, 3, 6, 7, 2], 2, 4) == 6
sumheights([5, 3, 6, 7, 2], 0, 1) == 2
sumheights([5, 3, 6, 7, 2], 0, 4) == 11
"""
function sumheights(heights, startx, endx)
    lastheight = nothing
    diffsum = 0
    for height in heights[startx+1:endx+1]
        if lastheight == nothing
            diff = 0
        else
            diff = abs(height - lastheight)
        end
        diffsum += diff
        lastheight = height
    end
    diffsum
end

using Test
function test()
    @testset begin
        @test sumheights([5, 3, 6, 7, 2], 2, 4) == 6
        @test sumheights([5, 3, 6, 7, 2], 0, 1) == 2
        @test sumheights([5, 3, 6, 7, 2], 0, 4) == 11
    end
    nothing
end

test()
