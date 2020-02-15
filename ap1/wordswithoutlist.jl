"""
https://codingbat.com/prob/p183407
AP-1 > wordsWithoutList

Given an array of strings,
return a new List (e.g. an ArrayList) where all the strings of the given length are omitted.
See wordsWithout() below which is more difficult because it uses arrays.

wordswithoutlist(["a", "bb", "b", "ccc"], 1) == ["bb", "ccc"]
wordswithoutlist(["a", "bb", "b", "ccc"], 3) == ["a", "bb", "b"]
wordswithoutlist(["a", "bb", "b", "ccc"], 4) == ["a", "bb", "b", "ccc"]
"""
function wordswithoutlist(words, len)
    filter(w -> length(w) ≠ len, words)
end

using Test
function test()
    @testset begin
        @test wordswithoutlist(["a", "bb", "b", "ccc"], 1) == ["bb", "ccc"]
        @test wordswithoutlist(["a", "bb", "b", "ccc"], 3) == ["a", "bb", "b"]
        @test wordswithoutlist(["a", "bb", "b", "ccc"], 4) == ["a", "bb", "b", "ccc"]
    end
    nothing
end

test()
