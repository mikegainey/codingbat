"""
https://codingbat.com/prob/p107259
Map-1 > mapAB

Modify and return the given map as follows:
for this problem the map may or may not contain the "a" and "b" keys.
If both keys are present, append their 2 string values together and store the result under the key "ab".

mapab(Dict("a" => "Hi", "b" => "There")) == Dict("a" => "Hi", "ab" => "HiThere", "b" => "There")
mapab(Dict("a" => "Hi")) == Dict("a" => "Hi")
mapab(Dict("b" => "There")) == Dict("b" => "There")

"""
function mapab(d)
    if "a" ∈ keys(d) && "b" ∈ keys(d)
        d["ab"] = string(d["a"], d["b"])
    end
    return d
end

using Test
function test()
    @testset begin
        @test mapab(Dict("a" => "Hi", "b" => "There")) == Dict("a" => "Hi", "ab" => "HiThere", "b" => "There")
        @test mapab(Dict("a" => "Hi")) == Dict("a" => "Hi")
        @test mapab(Dict("b" => "There")) == Dict("b" => "There")
    end
    nothing
end
