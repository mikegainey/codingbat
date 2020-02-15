"""
https://codingbat.com/prob/p123837
AP-1 > scoresAverage

Given an array of scores,
compute the int average of the first half and the second half, and return whichever is larger.
We'll say that the second half begins at index length/2. The array length will be at least 2.
To practice decomposition, write a separate helper method int average(int[] scores, int start, int end) { which computes the average of the elements between indexes start..end. Call your helper method twice to implement scoresAverage(). Write your helper method after your scoresAverage() method in the JavaBat text area. Normally you would compute averages with doubles, but here we use ints so the expected results are exact.

scoresaverage([2, 2, 4, 4]) == 4
scoresaverage([4, 4, 4, 2, 2, 2]) == 4
scoresaverage([3, 4, 5, 1, 2, 3]) == 4
"""
function average(ns)
    sum(ns) ÷ length(ns)
end

function scoresaverage(ns)
    midx = length(ns) ÷ 2
    firsthalf = ns[1:midx]
    secondhalf = ns[midx+1:end]
    max(average(firsthalf), average(secondhalf))
end

using Test
function test()
    @testset begin
        @test scoresaverage([2, 2, 4, 4]) == 4
        @test scoresaverage([4, 4, 4, 2, 2, 2]) == 4
        @test scoresaverage([3, 4, 5, 1, 2, 3]) == 4
    end
    nothing
end

test()
