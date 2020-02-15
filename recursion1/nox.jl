"""
https://codingbat.com/prob/p118230
Recursion-1 > noX

Given a string, compute recursively a new string where all the 'x' chars have been removed.

nox("xaxb") == "ab"
nox("abc") == "abc"
nox("xx") == ""
"""
function nox(s)
    if length(s) == 0
        return ""
    else
        head = s[1]
        tail = s[2:end]
        if head == 'x'
            return nox(tail)
        else
            return string(head, nox(tail))
        end
    end
end

using Test
function test()
    @testset begin
        @test nox("xaxb") == "ab"
        @test nox("abc") == "abc"
        @test nox("xx") == ""
    end
    nothing
end

test()
