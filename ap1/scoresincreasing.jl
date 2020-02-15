"""
https://codingbat.com/prob/p146974
AP-1 > scoresIncreasing

Given an array of scores, return true if each score is equal or greater than the one before.
The array will be length 2 or more.

scoresincreasing([1, 3, 4]) == true
scoresincreasing([1, 3, 2]) == false
scoresincreasing([1, 1, 4]) == true
"""
function scoresincreasing(ns)
    last = ns[1]
    for n in ns
        if n < last
            return false
        end
        last = n
    end
    return true
end

using Test
function test()
    @testset begin
        @test scoresincreasing([1, 3, 4]) == true
        @test scoresincreasing([1, 3, 2]) == false
        @test scoresincreasing([1, 1, 4]) == true
    end
    nothing
end

test()
