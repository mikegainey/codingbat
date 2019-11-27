"""
https://codingbat.com/prob/p194496
Functional-2 > noLong

Given a list of strings, return a list of the strings, omitting any string length 4 or more.

nolong(["this", "not", "too", "long"]) == ["not", "too"]
nolong(["a", "bbb", "cccc"]) == ["a", "bbb"]
nolong(["cccc", "cccc", "cccc"]) == []
"""
function nolong(los)
    return filter(s -> length(s) < 4, los)
end

using Test
function test()
    @testset begin
        @test nolong(["this", "not", "too", "long"]) == ["not", "too"]
        @test nolong(["a", "bbb", "cccc"]) == ["a", "bbb"]
        @test nolong(["cccc", "cccc", "cccc"]) == []
    end
    nothing
end

