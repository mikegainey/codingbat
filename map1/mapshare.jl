"""
https://codingbat.com/prob/p148813
Map-1 > mapShare

Modify and return the given map as follows:
- if the key "a" has a value, set the key "b" to have that same value.
- In all cases remove the key "c", leaving the rest of the map unchanged.

mapshare(Dict("a" => "aaa", "b" => "bbb", "c" => "ccc")) == Dict("a" => "aaa", "b" => "aaa")
mapshare(Dict("b" => "xyz", "c" => "ccc")) == Dict("b" => "xyz")
mapshare(Dict("a" => "aaa", "c" => "meh", "d" => "hi")) == Dict("a" => "aaa", "b" => "aaa", "d" => "hi")
"""
function mapshare(d)
    if "a" in keys(d)
        d["b"] = d["a"]
    end
    delete!(d, "c")
    return d
end

using Test
function test()
    @testset begin
        @test mapshare(Dict("a" => "aaa", "b" => "bbb", "c" => "ccc")) == Dict("a" => "aaa", "b" => "aaa")
        @test mapshare(Dict("b" => "xyz", "c" => "ccc")) == Dict("b" => "xyz")
        @test mapshare(Dict("a" => "aaa", "c" => "meh", "d" => "hi")) == Dict("a" => "aaa", "b" => "aaa", "d" => "hi")
    end
    nothing
end
