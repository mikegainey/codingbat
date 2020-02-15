"""
https://codingbat.com/prob/p182712
Map-1 > topping1

Given a map of food keys and topping values, modify and return the map as follows:
if the key "ice cream" is present, set its value to "cherry". In all cases, set the key "bread" to have the value "butter".

topping1(Dict("ice cream" => "peanuts")) == Dict("bread" => "butter", "ice cream" => "cherry")
topping1(Dict()) == Dict("bread" => "butter")
topping1(Dict("pancake" => "syrup")) == Dict("bread" => "butter", "pancake" => "syrup")
"""
function topping1(d)
    "ice cream" in keys(d) && (d["ice cream"] = "cherry")
    d["bread"] = "butter"
    return d
end

using Test
function test()
    @testset begin
        @test topping1(Dict("ice cream" => "peanuts")) == Dict("bread" => "butter", "ice cream" => "cherry")
        @test topping1(Dict()) == Dict("bread" => "butter")
        @test topping1(Dict("pancake" => "syrup")) == Dict("bread" => "butter", "pancake" => "syrup")
    end
    nothing
end
