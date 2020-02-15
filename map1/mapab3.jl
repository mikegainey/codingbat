"""
https://codingbat.com/prob/p115012
Map-1 > mapAB3

Modify and return the given map as follows:
if exactly one of the keys "a" or "b" has a value in the map (but not both),
set the other to have that same value in the map.

mapab3(Dict("a" => "aaa", "c" => "cake")) == Dict("a" => "aaa", "b" => "aaa", "c" => "cake")
mapab3(Dict("b" => "bbb", "c" => "cake")) == Dict("a" => "bbb", "b" => "bbb", "c" => "cake")
mapab3(Dict("a" => "aaa", "b" => "bbb", "c" => "cake")) == Dict("a" => "aaa", "b" => "bbb", "c" => "cake")
"""
function mapab3(d)
    if "a" ∈ keys(d) && "b" ∉ keys(d)
        d["b"] = d["a"]
    elseif "b" ∈ keys(d) && "a" ∉ keys(d)
        d["a"] = d["b"]
    end
    return d
end

using Test
function test()
    @testset begin
        @test mapab3(Dict("a" => "aaa", "c" => "cake")) == Dict("a" => "aaa", "b" => "aaa", "c" => "cake")
        @test mapab3(Dict("b" => "bbb", "c" => "cake")) == Dict("a" => "bbb", "b" => "bbb", "c" => "cake")
        @test mapab3(Dict("a" => "aaa", "b" => "bbb", "c" => "cake")) == Dict("a" => "aaa", "b" => "bbb", "c" => "cake")
    end
    nothing
end
