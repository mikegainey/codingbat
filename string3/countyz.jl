"""
String-3 > countYZ
https://codingbat.com/prob/p199171

Given a string, count the number of words ending in 'y' or 'z'
-- so the 'y' in "heavy" and the 'z' in "fez" count, but not the 'y' in "yellow" (not case sensitive).
We'll say that a y or z is at the end of a word if there is not an alphabetic letter immediately following it.

countyz("fez day") == 2
countyz("day fez") == 2
countyz("day fyyyz") == 2
"""
function countyz(sentence)
    words = split(sentence)
    yzwords = filter(w -> w[end] == 'y' || w[end] == 'z', words)
    total = length(yzwords)
end

using Test
function test()
    @testset begin
        @test countyz("fez day") == 2
        @test countyz("day fez") == 2
        @test countyz("day fyyyz") == 2
        @test countyz("this is a test") == 0
        @test countyz("thisy isz a testy") == 3
    end
    nothing
end
