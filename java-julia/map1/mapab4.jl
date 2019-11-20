"""
https://codingbat.com/prob/p136950
Map-1 > mapAB4

Modify and return the given map as follows:
- if the keys "a" and "b" have values that have different lengths, then set "c" to have the longer value.
- If the values exist and have the same length, change them both to the empty string in the map.

mapab4(Dict("a" => "aaa", "b" => "bb", "c" => "cake")) == Dict("a" => "aaa", "b" => "bb", "c" => "aaa")
mapab4(Dict("a" => "aa", "b" => "bbb", "c" => "cake")) == Dict("a" => "aa", "b" => "bbb", "c" => "bbb")
mapab4(Dict("a" => "aa", "b" => "bbb")) == Dict("a" => "aa", "b" => "bbb", "c" => "bbb")
"""
function mapab4(d)
    if "a" ∈ keys(d) && "b" ∈ keys(d)
        lena = length(d["a"])
        lenb = length(d["b"])
        if lena > lenb
            d["c"] = d["a"]
        elseif lenb > lena
            d["c"] = d["b"]
        else
            d["a"] = ""
            d["b"] = ""
        end
    end
    return d
end

using Test
function test()
    @testset begin
        @test mapab4(Dict("a" => "aaa", "b" => "bb", "c" => "cake")) == Dict("a" => "aaa", "b" => "bb", "c" => "aaa")
        @test mapab4(Dict("a" => "aa", "b" => "bbb", "c" => "cake")) == Dict("a" => "aa", "b" => "bbb", "c" => "bbb")
        @test mapab4(Dict("a" => "aa", "b" => "bbb")) == Dict("a" => "aa", "b" => "bbb", "c" => "bbb")
    end
    nothing
end

