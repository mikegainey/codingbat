"""
String-3 > countTriple
https://codingbat.com/prob/p195714

We'll say that a "triple" in a string is a char appearing three times in a row.
Return the number of triples in the given string. The triples may overlap.

counttriple("abcXXXabc") → 1
counttriple("xxxabyyyycd") → 3
counttriple("a") → 0
"""
function counttriple(s)
    if length(s) < 3
        return 0
    end

    count = 0
    for index in 1:length(s)-2
        if s[index] == s[index+1] == s[index+2]
            count += 1
        end
    end
    count
end

using Test
function test()
    @testset begin
        @test counttriple("abcXXXabc") == 1
        @test counttriple("xxxabyyyycd") == 3
        @test counttriple("a") == 0
    end
    nothing
end
