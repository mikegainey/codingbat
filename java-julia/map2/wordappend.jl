"""
https://codingbat.com/prob/p103593
Map-2 > wordAppend

Loop over the given array of strings to build a result string like this:
when a string appears the 2nd, 4th, 6th, etc. time in the array, append the string to the result.
Return the empty string if no string appears a 2nd time.

wordappend(["a", "b", "a"]) == "a"
wordappend(["a", "b", "a", "c", "a", "d", "a"]) == "aa"
wordappend(["a", "", "a"]) == "a"
"""
function wordappend(strings)
    stringdict = Dict()
    output = ""
    for str in strings
        stringdict[str] = get(stringdict, str, 0) + 1
        if stringdict[str] % 2 == 0
            output = output * str
        end
    end
    return output
end

using Test
function test()
    @testset begin
        @test wordappend(["a", "b", "a"]) == "a"
        @test wordappend(["a", "b", "a", "c", "a", "d", "a"]) == "aa"
        @test wordappend(["a", "", "a"]) == "a"
    end
    nothing
end
