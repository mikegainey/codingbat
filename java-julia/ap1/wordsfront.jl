"""
https://codingbat.com/prob/p183837
AP-1 > wordsFront

Given an array of strings, return a new array containing the first N strings. N will be in the range 1..length.

wordsfront(["a", "b", "c", "d"], 1) == ["a"]
wordsfront(["a", "b", "c", "d"], 2) == ["a", "b"]
wordsfront(["a", "b", "c", "d"], 3) == ["a", "b", "c"]
"""
function wordsfront(words, n)
    words[1:n]
end

using Test
function test()
    @testset begin
        @test wordsfront(["a", "b", "c", "d"], 1) == ["a"]
        @test wordsfront(["a", "b", "c", "d"], 2) == ["a", "b"]
        @test wordsfront(["a", "b", "c", "d"], 3) == ["a", "b", "c"]
    end
    nothing
end

test()
