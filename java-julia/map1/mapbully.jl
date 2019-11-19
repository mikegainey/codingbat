"""
https://codingbat.com/prob/p197888
Map-1 > mapBully

Modify and return the given map as follows:
if the key "a" has a value, set the key "b" to have that value, and set the key "a" to have the value "".
Basically "b" is a bully, taking the value and replacing it with the empty string.

mapBully({"a": "candy", "b": "dirt"}) → {"a": "", "b": "candy"}
mapBully({"a": "candy"}) → {"a": "", "b": "candy"}
mapBully({"a": "candy", "b": "carrot", "c": "meh"}) → {"a": "", "b": "candy", "c": "meh"}
"""
function mapbully(d)
    if "a" ∈ keys(d)
        d["b"] = d["a"]
        d["a"] = ""
    end
    return d
end

using Test
function test()
    @testset begin
        @test mapbully(Dict("a" => "candy", "b" => "dirt")) == Dict("a" => "", "b" => "candy")
        @test mapbully(Dict("a" => "candy")) == Dict("a" => "", "b" => "candy")
        @test mapbully(Dict("a" => "candy", "b" => "carrot", "c" => "meh")) == Dict("a" => "", "b" => "candy", "c" => "meh")
    end
    nothing
end
