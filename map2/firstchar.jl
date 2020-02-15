"""
https://codingbat.com/prob/p168493
Map-2 > firstChar

Given an array of non-empty strings,
return a Map<String, String> with a key for every different first character seen,
with the value of all the strings starting with that character appended together in the order they appear in the array.

firstchar(["salt", "tea", "soda", "toast"]) == Dict("s" => "saltsoda", "t" => "teatoast")
firstchar(["aa", "bb", "cc", "aAA", "cCC", "d"]) == Dict("a" => "aaaAA", "b" => "bb", "c" => "cccCC", "d" => "d")
firstchar([]) == Dict()
"""
function firstchar(strings)
    wdict = Dict()
    for str in strings
        firstletter = str[1:1]
        wdict[firstletter] = get(wdict, firstletter, "") * str
    end
    return wdict
end

using Test
function test()
    @testset begin
        @test firstchar(["salt", "tea", "soda", "toast"]) ==
            Dict("s" => "saltsoda", "t" => "teatoast")

        @test firstchar(["aa", "bb", "cc", "aAA", "cCC", "d"]) ==
            Dict("a" => "aaaAA", "b" => "bb", "c" => "cccCC", "d" => "d")

        @test firstchar([]) == Dict()
    end
    nothing
end
