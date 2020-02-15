"""
https://codingbat.com/prob/p140485
AP-1 > scoresSpecial

Given two arrays, A and B, of non-negative int scores. A "special" score is one which is a multiple of 10, such as 40 or 90.
Return the sum of largest special score in A and the largest special score in B.
To practice decomposition, write a separate helper method which finds the largest special score in an array.
Write your helper method after your scoresSpecial() method in the JavaBat text area.

scoresspecial([12, 10, 4], [2, 20, 30]) == 40
scoresspecial([20, 10, 4], [2, 20, 10]) == 40
scoresspecial([12, 11, 4], [2, 20, 31]) == 20
"""
function largestspecial(ns)
    result = 0
    for n in ns
        if n % 10 == 0 && n > result
            result = n
        end
    end
    result
end

function scoresspecial(a, b)
    largestspecial(a) + largestspecial(b)
end

using Test
function test()
    @testset begin
        @test scoresspecial([12, 10, 4], [2, 20, 30]) == 40
        @test scoresspecial([20, 10, 4], [2, 20, 10]) == 40
        @test scoresspecial([12, 11, 4], [2, 20, 31]) == 20
    end
    nothing
end

test()
