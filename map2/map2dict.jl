input = """
firstSwap(["ab", "ac"]) → ["ac", "ab"]
firstSwap(["ax", "bx", "cx", "cy", "by", "ay", "aaa", "azz"]) → ["ay", "by", "cy", "cx", "bx", "ax", "aaa", "azz"]
firstSwap(["ax", "bx", "ay", "by", "ai", "aj", "bx", "by"]) → ["ay", "by", "ax", "bx", "ai", "aj", "bx", "by"]
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
