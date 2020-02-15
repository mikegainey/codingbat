"""
https://codingbat.com/prob/p121236
AP-1 > wordsWithout

Given an array of strings, return a new array without the strings that are equal to the target string.
One approach is to count the occurrences of the target string, make a new array of the correct length,
and then copy over the correct strings.

wordswithout(["a", "b", "c", "a"], "a") == ["b", "c"]
wordswithout(["a", "b", "c", "a"], "b") == ["a", "c", "a"]
wordswithout(["a", "b", "c", "a"], "c") == ["a", "b", "a"]
"""
function wordswithout(words, target)
    output = []
    for word in words
        if word ≠ target
            push!(output, word)
        end
    end
    output
end

using Test
function test()
    @testset begin
        @test wordswithout(["a", "b", "c", "a"], "a") == ["b", "c"]
        @test wordswithout(["a", "b", "c", "a"], "b") == ["a", "c", "a"]
        @test wordswithout(["a", "b", "c", "a"], "c") == ["a", "b", "a"]
    end
    nothing
end

test()
