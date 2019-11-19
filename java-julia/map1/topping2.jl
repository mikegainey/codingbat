"""
https://codingbat.com/prob/p196458
Map-1 > topping2

Given a map of food keys and their topping values, modify and return the map as follows:
- if the key "ice cream" has a value, set that as the value for the key "yogurt" also.
- If the key "spinach" has a value, change that value to "nuts".

topping2(Dict("ice cream" => "cherry")) == Dict("yogurt" => "cherry", "ice cream" => "cherry")
topping2(Dict("spinach" => "dirt", "ice cream" => "cherry")) == Dict("yogurt" => "cherry", "spinach" => "nuts", "ice cream" => "cherry")
topping2(Dict("yogurt" => "salt")) == Dict("yogurt" => "salt")
"""
function topping2(d)
    if "ice cream" in keys(d)
        d["yogurt"] = d["ice cream"]
    end
    if "spinach" in keys(d)
        d["spinach"] = "nuts"
    end
    return d
end

using Test
function test()
    @testset begin
        @test topping2(Dict("ice cream" => "cherry")) == Dict("yogurt" => "cherry", "ice cream" => "cherry")
        @test topping2(Dict("spinach" => "dirt", "ice cream" => "cherry")) == Dict("yogurt" => "cherry", "spinach" => "nuts", "ice cream" => "cherry")
        @test topping2(Dict("yogurt" => "salt")) == Dict("yogurt" => "salt")
    end
    nothing
end
