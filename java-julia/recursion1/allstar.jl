"""
https://codingbat.com/prob/p183394
Recursion-1 > allStar

Given a string, compute recursively a new string where all the adjacent chars are now separated by a "*".

allstar("hello") == "h*e*l*l*o"
allstar("abc") == "a*b*c"
allstar("ab") == "a*b"
"""
function allstar(s)
    if length(s) == 1
        return s
    else
        head = s[1]
        tail = s[2:end]
        return string(head, '*', allstar(tail))
    end
end

using Test
function test()
    @testset begin
        @test allstar("hello") == "h*e*l*l*o"
        @test allstar("abc") == "a*b*c"
        @test allstar("ab") == "a*b"
    end
    nothing
end

test()
