"""
https://codingbat.com/prob/p190862
Map-2 > wordMultiple

Given an array of strings,
return a Map<String, Boolean> where each different string is a key
and its value is true if that string appears 2 or more times in the array.

wordmultiple(["a", "b", "a", "c", "b"]) == Dict("a" => true, "b" => true, "c" => false)
wordmultiple(["c", "b", "a"]) == Dict("a" => false, "b" => false, "c" => false)
wordmultiple(["c", "c", "c", "c"]) == Dict("c" => true)
"""
function wordmultiple(strings)
    wdict = Dict()
    # count strings
    for str in strings
        wdict[str] = get(wdict, str, 0) + 1
    end
    # counts of 2 or more => true, otherwise false
    for (k, v) in wdict
        if v ≥ 2
            wdict[k] = true
        else
            wdict[k] = false
        end
    end
    return wdict
end

using Test
function test()
    @testset begin
        @test wordmultiple(["a", "b", "a", "c", "b"]) == Dict("a" => true, "b" => true, "c" => false)
        @test wordmultiple(["c", "b", "a"]) == Dict("a" => false, "b" => false, "c" => false)
        @test wordmultiple(["c", "c", "c", "c"]) == Dict("c" => true)
    end
    nothing
end
