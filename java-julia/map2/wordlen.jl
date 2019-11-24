"""
https://codingbat.com/prob/p125327
Map-2 > wordLen

Given an array of strings,
return a Map<String, Integer> containing a key for every different string in the array,
and the value is that string's length.

wordlen(["a", "bb", "a", "bb"]) == Dict("bb" => 2, "a" => 1)
wordlen(["this", "and", "that", "and"]) == Dict("that" => 4, "and" => 3, "this" => 4)
wordlen(["code", "code", "code", "bug"]) == Dict("code" => 4, "bug" => 3)
"""
function wordlen(strings)
    wdict = Dict()
    for str in strings
        if str ∉ keys(wdict)
            wdict[str] = length(str)
        end
    end
    return wdict
end

using Test
function test()
    @testset begin
        @test wordlen(["a", "bb", "a", "bb"]) == Dict("bb" => 2, "a" => 1)
        @test wordlen(["this", "and", "that", "and"]) == Dict("that" => 4, "and" => 3, "this" => 4)
        @test wordlen(["code", "code", "code", "bug"]) == Dict("code" => 4, "bug" => 3)
    end
    nothing
end

