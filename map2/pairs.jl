"""
https://codingbat.com/prob/p126332
Map-2 > pairs

Given an array of non-empty strings, create and return a Map<String, String> as follows:
for each string add its first character as a key with its last character as the value.

pairs(["code", "bug"]) == Dict("b" => "g", "c" => "e")
pairs(["man", "moon", "main"]) == Dict("m" => "n")
pairs(["man", "moon", "good", "night"]) == Dict("g" => "d", "m" => "n", "n" => "t")
"""
function pairs(strings)
    fllld = Dict()
    for str in strings
        firstletter = str[1:1]
        lastletter = str[end:end]
        fllld[firstletter] = lastletter
    end
    return fllld
end

using Test
function test()
    @testset begin
        @test pairs(["code", "bug"]) == Dict("b" => "g", "c" => "e")
        @test pairs(["man", "moon", "main"]) == Dict("m" => "n")
        @test pairs(["man", "moon", "good", "night"]) == Dict("g" => "d", "m" => "n", "n" => "t")
    end
    nothing
end
