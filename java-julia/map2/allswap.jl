"""

https://codingbat.com/prob/p134133
Map-2 > allSwap

We'll say that 2 strings "match" if they are non-empty and their first chars are the same.
Loop over and then return the given array of non-empty strings as follows:
if a string matches an earlier string in the array, swap the 2 strings in the array.
When a position in the array has been swapped, it no longer matches anything.
Using a map, this can be solved making just one pass over the array. More difficult than it looks.

allswap(["ab", "ac"]) == ["ac", "ab"]
allswap(["ax", "bx", "cx", "cy", "by", "ay", "aaa", "azz"]) == ["ay", "by", "cy", "cx", "bx", "ax", "azz", "aaa"]
allswap(["ax", "bx", "ay", "by", "ai", "aj", "bx", "by"]) == ["ay", "by", "ax", "bx", "aj", "ai", "by", "bx"]
"""
function allswap(array)
    flixmap = Dict() # first letter index map
    for (x1, str) in enumerate(array[:]) # loop over a copy of the array; the original will mutate
        flet = str[1]
        if flet ∈ keys(flixmap) # does the first letter have a previous match?
            x2 = flixmap[flet] # yes, the index of the previous match
            array[x1], array[x2] = array[x2], array[x1] # swap
            delete!(flixmap, flet) # remove the entry from the map
        else
            flixmap[flet] = x1 # add the entry to the map
        end
    end
    return array
end

using Test
function test()
    @testset begin
        @test allswap(["ab", "ac"]) == ["ac", "ab"]

        @test allswap(["ax", "bx", "cx", "cy", "by", "ay", "aaa", "azz"]) ==
            ["ay", "by", "cy", "cx", "bx", "ax", "azz", "aaa"]

        @test allswap(["ax", "bx", "ay", "by", "ai", "aj", "bx", "by"]) == ["ay", "by", "ax", "bx", "aj", "ai", "by", "bx"]
    end
    nothing
end
