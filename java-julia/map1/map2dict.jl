input = """
topping2({"ice cream": "cherry"}) → {"yogurt": "cherry", "ice cream": "cherry"}
topping2({"spinach": "dirt", "ice cream": "cherry"}) → {"yogurt": "cherry", "spinach": "nuts", "ice cream": "cherry"}
topping2({"yogurt": "salt"}) → {"yogurt": "salt"}
"""

a = x -> replace(x, "{" => "Dict(")
b = x -> replace(x, "}" => ")")
c = x -> replace(x, ":" => " =>")
d = x -> replace(x, "→" => "==")

output = input |> a |> b |> c |> d

println(output)

using Test
function test()
    @testset begin
    end
    nothing
end
