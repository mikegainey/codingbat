"""
https://codingbat.com/prob/p124620
AP-1 > wordsCount

Given an array of strings, return the count of the number of strings with the given length.

wordscount(["a", "bb", "b", "ccc"], 1) == 2
wordscount(["a", "bb", "b", "ccc"], 3) == 1
wordscount(["a", "bb", "b", "ccc"], 4) == 0
"""
function wordscount(words, len)
    count = 0
    for word in words
        if length(word) == len
            count += 1
        end
    end
    count
end

using Test
function test()
    @testset begin
        @test wordscount(["a", "bb", "b", "ccc"], 1) == 2
        @test wordscount(["a", "bb", "b", "ccc"], 3) == 1
        @test wordscount(["a", "bb", "b", "ccc"], 4) == 0
    end
    nothing
end

test()
