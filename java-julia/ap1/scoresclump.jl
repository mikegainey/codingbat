"""
https://codingbat.com/prob/p194530
AP-1 > scoresClump

Given an array of scores sorted in increasing order,
return true if the array contains 3 adjacent scores that differ from each other by at most 2,
such as with {3, 4, 5} or {3, 5, 5}.

scoresclump([3, 4, 5]) == true
scoresclump([3, 4, 6]) == false
scoresclump([1, 3, 5, 5]) == true
"""
function scoresclump(scores)
    len = length(scores)
    for index in 1 : len-2
        if scores[index+2] - scores[index] ≤ 2
            return true
        end
    end
    false
end

using Test
function test()
    @testset begin
        @test scoresclump([3, 4, 5]) == true
        @test scoresclump([3, 4, 6]) == false
        @test scoresclump([1, 3, 5, 5]) == true
    end
    nothing
end

test()
