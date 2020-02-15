"""
https://codingbat.com/prob/p105967
Functional-1 > noX

Given a list of strings, return a list where each string has all its "x" removed.

noX(["ax", "bb", "cx"]) == ["a", "bb", "c"]
noX(["xxax", "xbxbx", "xxcx"]) == ["a", "bb", "c"]
noX(["x"]) == [""]
"""
function noX(los)
    return [replace(s, "x" => "") for s in los]
end

using Test
function test()
    @testset begin
        @test @show noX(["ax", "bb", "cx"]) == ["a", "bb", "c"]
        @test @show noX(["xxax", "xbxbx", "xxcx"]) == ["a", "bb", "c"]
        @test @show noX(["x"]) == [""]
    end
    nothing
end
