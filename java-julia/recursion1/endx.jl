"""
https://codingbat.com/prob/p105722
Recursion-1 > endX

Given a string, compute recursively a new string where all the lowercase 'x' chars have been moved to the end of the string.

endx("xxre") == "rexx"
endx("xxhixx") == "hixxxx"
endx("xhixhix") == "hihixxx"
"""
function endx1(s)
    if length(s) == 0
        return ""
    else
        head = s[1]
        tail = s[2:end]
        if head == 'x'
            return string(endx1(tail), 'x')
        else
            return string(head, endx1(tail))
        end
    end
end

function endx2(s, nonxs="", xs="")
    if length(s) == 0
        return string(nonxs, xs)
    else
        head = s[1]
        tail = s[2:end]
        if head == 'x'
            endx2(tail, nonxs, string(xs, head))
        else
            endx2(tail, string(nonxs, head), xs)
        end
    end
end

using Test
function test()
    @testset begin
        @test endx1("xxre") == "rexx"
        @test endx1("xxhixx") == "hixxxx"
        @test endx1("xhixhix") == "hihixxx"
        @test endx2("xxre") == "rexx"
        @test endx2("xxhixx") == "hixxxx"
        @test endx2("xhixhix") == "hihixxx"
    end
    nothing
end

test()
