"""
https://codingbat.com/prob/p169213
Logic-1 > lastDigit

Given three ints, a b c, return true if two or more of them have the same rightmost digit.
The ints are non-negative. Note: the % "mod" operator computes the remainder, e.g. 17 % 10 is 7.

lastDigit(23, 19, 13) → true
lastDigit(23, 19, 12) → false
lastDigit(23, 19, 3) → true
"""
function lastdigit(a, b, c)
    # make a list of the last digits of a, b, and c
    lastdigits = map(x -> x % 10, [a, b, c])
    # compare every pair, return true if a match is found, otherwise return false
    for i in 1:3
        for j in i+1:3
            if lastdigits[i] == lastdigits[j]
                return true
            end
        end
    end
    return false
end

using Test
function test()
    @testset begin
        @test lastdigit(23, 19, 13) == true
        @test lastdigit(23, 19, 12) == false
        @test lastdigit(23, 19, 3) == true
        @test lastdigit(25, 5, 13) == true
        @test lastdigit(23, 19, 9) == true
    end
    nothing
end

