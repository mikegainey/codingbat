"""
https://codingbat.com/prob/p115011
Map-1 > mapAB2

Modify and return the given map as follows:
if the keys "a" and "b" are both in the map and have equal values, remove them both.

mapab2(Dict("a" => "aaa", "b" => "aaa", "c" => "cake")) == Dict("c" => "cake")
mapab2(Dict("a" => "aaa", "b" => "bbb")) == Dict("a" => "aaa", "b" => "bbb")
mapab2(Dict("a" => "aaa", "b" => "bbb", "c" => "aaa")) == Dict("a" => "aaa", "b" => "bbb", "c" => "aaa")
"""
function mapab2(d)
    if "a" in keys(d) && "b" in keys(d)
        if d["a"] == d["b"]
            delete!(d, "a")
            delete!(d, "b")
        end
    end
    return d
end


using Test
function test()
    @testset begin
        @test mapab2(Dict("a" => "aaa", "b" => "aaa", "c" => "cake")) == Dict("c" => "cake")
        @test mapab2(Dict("a" => "aaa", "b" => "bbb")) == Dict("a" => "aaa", "b" => "bbb")
        @test mapab2(Dict("a" => "aaa", "b" => "bbb", "c" => "aaa")) == Dict("a" => "aaa", "b" => "bbb", "c" => "aaa")
    end
    nothing
end
