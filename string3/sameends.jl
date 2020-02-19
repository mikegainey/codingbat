"""
String-3 > sameEnds
https://codingbat.com/prob/p131516

Given a string, return the longest substring that appears at both the beginning and end of the string without overlapping.
For example, sameEnds("abXab") is "ab".

sameends("abXYab") == "ab"
sameends("xx") == "x"
sameends("xxx") == "x"
"""
function sameends(s)
    for endlength in length(s) ÷ 2 : -1 : 1
        if s[1 : endlength] == s[end - (endlength - 1) : end]
            return s[1:endlength]
        end
    end
    ""
end

using Test
function test()
    @testset begin
        @test sameends("abXYab") == "ab"
        @test sameends("xx") == "x"
        @test sameends("xxx") == "x"
    end
    nothing
end

