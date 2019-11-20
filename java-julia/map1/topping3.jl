"""
https://codingbat.com/prob/p128461
Map-1 > topping3

Given a map of food keys and topping values, modify and return the map as follows:
- if the key "potato" has a value, set that as the value for the key "fries".
- If the key "salad" has a value, set that as the value for the key "spinach".

topping3(Dict("potato" => "ketchup")) == Dict("potato" => "ketchup", "fries" => "ketchup")
topping3(Dict("potato" => "butter")) == Dict("potato" => "butter", "fries" => "butter")
topping3(Dict("salad" => "oil", "potato" => "ketchup")) == Dict("spinach" => "oil", "salad" => "oil", "potato" => "ketchup", "fries" => "ketchup")
"""
function topping3(d)
    if "potato" ∈ keys(d)
        d["fries"] = d["potato"]
    end
    if "salad" ∈ keys(d)
        d["spinach"] = d["salad"]
    end
    return d
end

using Test
function test()
    @testset begin
        @test topping3(Dict("potato" => "ketchup")) == Dict("potato" => "ketchup", "fries" => "ketchup")
        @test topping3(Dict("potato" => "butter")) == Dict("potato" => "butter", "fries" => "butter")
        @test topping3(Dict("salad" => "oil", "potato" => "ketchup")) == Dict("spinach" => "oil", "salad" => "oil", "potato" => "ketchup", "fries" => "ketchup")
    end
    nothing
end
