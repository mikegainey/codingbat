"""
https://codingbat.com/prob/p165312
String-2 > doubleChar

Given a string, return a string where for every char in the original, there are two chars.

doublechar("The") == "TThhee"
doublechar("AAbb") == "AAAAbbbb"
doublechar("Hi-There") == "HHii--TThheerree"
"""
function doublechar(str)
    output = ""
    for chr in str
        output = string(output, chr^2)
    end
    output
end

using Test
function test()
    @testset begin
        @test doublechar("The") == "TThhee"
        @test doublechar("AAbb") == "AAAAbbbb"
        @test doublechar("Hi-There") == "HHii--TThheerree"
    end
    nothing
end

