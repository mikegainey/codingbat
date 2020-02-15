"""
https://codingbat.com/prob/p184496
Functional-2 > no34

Given a list of strings, return a list of the strings, omitting any string length 3 or 4.

no34(["a", "bb", "ccc"]) == ["a", "bb"]
no34(["a", "bb", "ccc", "dddd"]) == ["a", "bb"]
no34(["ccc", "dddd", "apple"]) == ["apple"]
"""
function no34(los)
    filter(s -> length(s) ∉ [3, 4], los)
end

using Test
function test()
    @testset begin
        @test no34(["a", "bb", "ccc"]) == ["a", "bb"]
        @test no34(["a", "bb", "ccc", "dddd"]) == ["a", "bb"]
        @test no34(["ccc", "dddd", "apple"]) == ["apple"]
    end
    nothing
end

