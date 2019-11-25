"""
https://codingbat.com/prob/p105671
Functional-2 > noZ

Given a list of strings, return a list of the strings, omitting any string that contains a "z".
(Note: the str.contains(x) method returns a boolean)

noz(["aaa", "bbb", "aza"]) == ["aaa", "bbb"]
noz(["hziz", "hzello", "hi"]) == ["hi"]
noz(["hello", "howz", "are", "youz"]) == ["hello", "are"]
"""
function noz(los)
    return filter(x -> 'z' ∉ x, los)
end

using Test
function test()
    @testset begin
        @test @show noz(["aaa", "bbb", "aza"]) == ["aaa", "bbb"]
        @test @show noz(["hziz", "hzello", "hi"]) == ["hi"]
        @test @show noz(["hello", "howz", "are", "youz"]) == ["hello", "are"]
    end
    nothing
end

