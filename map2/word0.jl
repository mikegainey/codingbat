"""
https://codingbat.com/prob/p152303
Map-2 > word0

Given an array of strings, return a Map<String, Integer> containing a key for every different string in the array,
always with the value 0.
For example the string "hello" makes the pair "hello":0.
We'll do more complicated counting later, but for this problem the value is simply 0.

word0(["a", "b", "a", "b"]) == Dict("a" => 0, "b" => 0)
word0(["a", "b", "a", "c", "b"]) == Dict("a" => 0, "b" => 0, "c" => 0)
word0(["c", "b", "a"]) == Dict("a" => 0, "b" => 0, "c" => 0)

"""
function word0(aos) # aos = array of strings
    dsi = Dict() # dsi = dictionary of string => integer
    for s in aos
        if s ∉ keys(dsi)
            dsi[s] = 0
        end
    end
    return dsi
end

using Test
function test()
    @testset begin
        @test word0(["a", "b", "a", "b"]) == Dict("a" => 0, "b" => 0)
        @test word0(["a", "b", "a", "c", "b"]) == Dict("a" => 0, "b" => 0, "c" => 0)
        @test word0(["c", "b", "a"]) == Dict("a" => 0, "b" => 0, "c" => 0)
    end
    nothing
end

