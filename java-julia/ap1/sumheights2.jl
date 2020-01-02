"""
https://codingbat.com/prob/p157900
AP-1 > sumHeights2

(A variation on the sumHeights problem.)
We have an array of heights, representing the altitude along a walking trail. Given start/end indexes into the array,
return the sum of the changes for a walk beginning at the start index and ending at the end index,
however increases in height count double.
For example, with the heights {5, 3, 6, 7, 2} and start=2, end=4 yields a sum of 1*2 + 5 = 7.
The start end end index will both be valid indexes into the array with start <= end.

sumheights2([5, 3, 6, 7, 2], 2, 4) == 7
sumheights2([5, 3, 6, 7, 2], 0, 1) == 2
sumheights2([5, 3, 6, 7, 2], 0, 4) == 15
"""
function sumheights2(heights, startx, endx)
    lastheight = nothing
    sumdiffs = 0
    for height in heights[startx+1:endx+1]
        if lastheight ≠ nothing
            if height > lastheight
                diff = (height - lastheight) * 2
            else # lastheight ≥ height
                diff = lastheight - height
            end
        else
            diff = 0
        end
        sumdiffs += diff
        lastheight = height
    end
    sumdiffs
end

using Test
function test()
    @testset begin
        @test sumheights2([5, 3, 6, 7, 2], 2, 4) == 7
        @test sumheights2([5, 3, 6, 7, 2], 0, 1) == 2
        @test sumheights2([5, 3, 6, 7, 2], 0, 4) == 15
    end
    nothing
end

test()

