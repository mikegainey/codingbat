"""
https://codingbat.com/prob/p137918
Recursion-1 > parenBit

Given a string that contains a single pair of parenthesis,
compute recursively a new string made of only of the parenthesis and their contents, so "xyz(abc)123" yields "(abc)".

parenbit("xyz(abc)123") == "(abc)"
parenbit("x(hello)") == "(hello)"
parenbit("(xy)1") == "(xy)"
"""
function parenbit(s)
    @show s
    if s[1] == '(' && s[end] == ')'
        return s
    else
        if s[1] ≠ '(' && s[end] ≠ ')' # both ends have non-parens
            parenbit(s[2:end-1])
        elseif s[1] ≠ '('             # left end has a non-paren
            parenbit(s[2:end])
        elseif s[end] ≠ ')'           # right end has a non-paren
            parenbit(s[1:end-1])
        else
            error()
        end
    end
end

using Test
function test()
    @testset begin
        @test parenbit("xyz(abc)123") == "(abc)"
        @test parenbit("x(hello)") == "(hello)"
        @test parenbit("(xy)1") == "(xy)"
    end
    nothing
end

test()
