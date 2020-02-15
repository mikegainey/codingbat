"""
https://codingbat.com/prob/p170371
Recursion-1 > countX

Given a string, compute recursively (no loops) the number of lowercase 'x' chars in the string.

countx("xxhixx") == 4
countx("xhixhix") == 3
countx("hi") == 0
"""
function countx(s)
    if length(s) == 0
        return 0
    else
        head = s[1]
        tail = s[2:end]
        if head == 'x'
            1 + countx(tail)
        else
            0 + countx(tail)
        end
    end
end

using Test
function test()
    @testset begin
        @test countx("xxhixx") == 4
        @test countx("xhixhix") == 3
        @test countx("hi") == 0
    end
    nothing
end

test()
