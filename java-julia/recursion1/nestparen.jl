"""
https://codingbat.com/prob/p183174
Recursion-1 > nestParen

Given a string, return true if it is a nesting of zero or more pairs of parenthesis, like "(())" or "((()))".
Suggestion: check the first and last chars, and then recur on what's inside them.

nestparen("(())") == true
nestparen("((()))") == true
nestparen("(((x))") == false
"""
function nestparen(s)
    if length(s) < 2
        return true
    else
        if s[1] == '(' && s[end] == ')'
            nestparen(s[2:end-1])
        else
            return false
        end
    end
end

using Test
function test()
    @testset begin
        @test nestparen("(())") == true
        @test nestparen("((()))") == true
        @test nestparen("(((x))") == false
    end
    nothing
end

test()
