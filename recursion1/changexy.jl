"""
https://codingbat.com/prob/p101372
Recursion-1 > changeXY

Given a string, compute recursively (no loops) a new string where all the lowercase 'x' chars have been changed to 'y' chars.

changexy("codex") == "codey"
changexy("xxhixx") == "yyhiyy"
changexy("xhixhix") == "yhiyhiy"
"""
function changexy(s)
    if s == ""
        return s
    else
        head = s[1]
        tail = s[2:end]
        if head == 'x'
            return string('y', changexy(tail))
        else
            return string(head, changexy(tail))
        end
    end
end

using Test
function test()
    @testset begin
        @test changexy("codex") == "codey"
        @test changexy("xxhixx") == "yyhiyy"
        @test changexy("xhixhix") == "yhiyhiy"
    end
    nothing
end

test()
