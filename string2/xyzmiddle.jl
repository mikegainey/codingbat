"""
https://codingbat.com/prob/p159772
String-2 > xyzMiddle

Given a string, does "xyz" appear in the middle of the string?
To define middle, we'll say that the number of chars to the left and right of the "xyz" must differ by at most one.
This problem is harder than it looks.

xyzmiddle("AAxyzBB") == true
xyzmiddle("AxyzBB") == true
xyzmiddle("AxyzBBB") == false
"""
function xyzmiddle(str)
    len = length(str)
    if len % 2 != 0 # len is odd, so "xyz" should be in the exact middle
        x = div(len, 2)
        return str[x:x+2] == "xyz"
    else # len is even, so length of extraneous characters on either side should differ by exactly 1 x1 = div(len, 2)
        x2 = x1 - 1
        return str[x1:x1+2] == "xyz" || str[x2:x2+2] == "xyz"
    end
end

using Test
function test()
    @testset begin
        @test xyzmiddle("AAxyzBB") == true
        @test xyzmiddle("AxyzBB") == true
        @test xyzmiddle("AxyzBBB") == false
        @test xyzmiddle("AAAxyzB") == false
        @test xyzmiddle("Axyz") == true
        @test xyzmiddle("xyzA") == true
        @test xyzmiddle("AAAAxyzBBBBB") == true
        @test xyzmiddle("AAAAAxyzBBBB") == true
    end
    nothing
end

test()
