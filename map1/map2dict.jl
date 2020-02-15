input = """
mapab4({"a": "aaa", "b": "bb", "c": "cake"}) → {"a": "aaa", "b": "bb", "c": "aaa"}
mapab4({"a": "aa", "b": "bbb", "c": "cake"}) → {"a": "aa", "b": "bbb", "c": "bbb"}
mapab4({"a": "aa", "b": "bbb"}) → {"a": "aa", "b": "bbb", "c": "bbb"}
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
