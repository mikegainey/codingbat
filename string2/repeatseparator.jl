"""
https://codingbat.com/prob/p109637
String-2 > repeatSeparator

Given two strings, word and a separator sep, return a big string made of count occurrences of the word,
separated by the separator string.

repeatseparator("Word", "X", 3) == "WordXWordXWord"
repeatseparator("This", "And", 2) == "ThisAndThis"
repeatseparator("This", "And", 1) == "This"
"""
function repeatseparator(word, sep, count)
    words = [word for i in 1:count]
    join(words, sep)
end

using Test
function test()
    @testset begin
        @test repeatseparator("Word", "X", 3) == "WordXWordXWord"
        @test repeatseparator("This", "And", 2) == "ThisAndThis"
        @test repeatseparator("This", "And", 1) == "This"
    end
    nothing
end

test()
