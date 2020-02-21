"""
String-3 > sumDigits
https://codingbat.com/prob/p197890

Given a string, return the sum of the digits 0-9 that appear in the string, ignoring all other characters.
Return 0 if there are no digits in the string.

sumdigits("aa1bc2d3") == 6
sumdigits("aa11b33") == 8
sumdigits("Chocolate") == 0
"""
function sumdigits(s)
    sum = 0
    for c in s
        if isdigit(c)
            sum += parse(Int, c)
        end
    end
    sum
end

using Test
function test()
    @testset begin
        @test sumdigits("aa1bc2d3") == 6
        @test sumdigits("aa11b33") == 8
        @test sumdigits("Chocolate") == 0
    end
    nothing
end
