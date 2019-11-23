"""
https://codingbat.com/prob/p138990
Logic-2 > closeFar

Given three ints, a b c, return true if one of b or c is "close" (differing from a by at most 1),
while the other is "far", differing from both other values by 2 or more.
Note: Math.abs(num) computes the absolute value of a number.

closefar(1, 2, 10) == true
closefar(1, 2, 3) == false
closefar(4, 1, 3) == true
"""
function isclose(a, b)
    return abs(a - b) ≤ 1
end

function isfar(a, b)
    return abs(a - b) ≥ 2
end

function closefar2(a, b, c)
    if isclose(a, b) && isfar(c, a) && isfar(c, b)
        return true
    elseif isclose(a, c) && isfar(b, a) && isfar(b, c)
        return true
    else
        return false
    end
end

using Test
function test()
    @testset begin
        @test closefar1(1, 2, 10) == true
        @test closefar1(1, 2, 3) == false
        @test closefar1(4, 1, 3) == true
        @test closefar1(4, 5, 3) == false
        @test closefar1(1, 3, 5) == false

        @test closefar2(1, 2, 10) == true
        @test closefar2(1, 2, 3) == false
        @test closefar2(4, 1, 3) == true
        @test closefar2(4, 5, 3) == false
        @test closefar2(1, 3, 5) == false
    end
    nothing
end
