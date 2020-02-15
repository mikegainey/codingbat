"""
AP-1 > scores100

Given an array of scores, return true if there are scores of 100 next to each other in the array.
The array length will be at least 2.

scores100([1, 100, 100]) == true
scores100([1, 100, 99, 100]) == false
scores100([100, 1, 100, 100]) == true
https://codingbat.com/prob/p179487
"""
function scores100(scores)
    lastscore = nothing
    for score in scores
        if lastscore ≠ nothing
            if score == 100 && lastscore == 100
                return true
            end
        end
        lastscore = score
    end
    return false
end

using Test
function test()
    @testset begin
        @test scores100([1, 100, 100]) == true
        @test scores100([1, 100, 99, 100]) == false
        @test scores100([100, 1, 100, 100]) == true
    end
    nothing
end

test()
