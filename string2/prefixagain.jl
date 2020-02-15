"""
https://codingbat.com/prob/p136417
String-2 > prefixAgain

Given a string, consider the prefix string made of the first N chars of the string.
Does that prefix string appear somewhere else in the string?
Assume that the string is not empty and that N is in the range 1..str.length().

prefixagain("abXYabc", 1) == true
prefixagain("abXYabc", 2) == true
prefixagain("abXYabc", 3) == false
"""
function prefixagain(s, n)
    occursin(s[1:n], s[2:end])
end

using Test
function test()
    @testset begin
        @test prefixagain("abXYabc", 1) == true
        @test prefixagain("abXYabc", 2) == true
        @test prefixagain("abXYabc", 3) == false
    end
    nothing
end
