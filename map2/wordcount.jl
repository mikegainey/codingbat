"""
https://codingbat.com/prob/p117630
Map-2 > wordCount

The classic word-count algorithm:
given an array of strings, return a Map<String, Integer> with a key for each different string,
with the value the number of times that string appears in the array.

wordcount(["a", "b", "a", "c", "b"]) == Dict("a" => 2, "b" => 2, "c" => 1)
wordcount(["c", "b", "a"]) == Dict("a" => 1, "b" => 1, "c" => 1)
wordcount(["c", "c", "c", "c"]) == Dict("c" => 4)
"""
function wordcount(aos)
    dsi = Dict()
    for s in aos
        dsi[s] = get(dsi, s, 0) + 1
    end
    return dsi
end

using Test
function test()
    @testset begin
        @test wordcount(["a", "b", "a", "c", "b"]) == Dict("a" => 2, "b" => 2, "c" => 1)
        @test wordcount(["c", "b", "a"]) == Dict("a" => 1, "b" => 1, "c" => 1)
        @test wordcount(["c", "c", "c", "c"]) == Dict("c" => 4)
    end
    nothing
end





