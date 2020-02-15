"""
https://codingbat.com/prob/p170181
Functional-1 > addStar

Given a list of strings, return a list where each string has "*" added at its end.

addstar(["a", "bb", "ccc"]) == ["a*", "bb*", "ccc*"]
addstar(["hello", "there"]) == ["hello*", "there*"]
addstar(["*"]) == ["**"]
"""
function addstar(los)
    return map(s -> string(s, "*"), los)
end

using Test
function test()
    @testset begin
        @test @show addstar(["a", "bb", "ccc"]) == ["a*", "bb*", "ccc*"]
        @test @show addstar(["hello", "there"]) == ["hello*", "there*"]
        @test @show addstar(["*"]) == ["**"]
    end
    nothing
end
