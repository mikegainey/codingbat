"""
https://codingbat.com/prob/p150113
Map-2 > firstSwap

We'll say that 2 strings "match" if they are non-empty and their first chars are the same.
Loop over and then return the given array of non-empty strings as follows:
if a string matches an earlier string in the array, swap the 2 strings in the array.
A particular first char can only cause 1 swap, so once a char has caused a swap, its later swaps are disabled.
Using a map, this can be solved making just one pass over the array. More difficult than it looks.

firstswap(["ab", "ac"]) == ["ac", "ab"]
firstswap(["ax", "bx", "cx", "cy", "by", "ay", "aaa", "azz"]) == ["ay", "by", "cy", "cx", "bx", "ax", "aaa", "azz"]
firstswap(["ax", "bx", "ay", "by", "ai", "aj", "bx", "by"]) == ["ay", "by", "ax", "bx", "ai", "aj", "bx", "by"]
"""
function firstswap(strings)
    stinmap = Dict()
    for (x1, str) in enumerate(strings[:])
        fchar = str[1]
        if fchar ∈ keys(stinmap)
            if stinmap[fchar] > 0
                x2 = stinmap[fchar]
                strings[x1], strings[x2] = strings[x2], strings[x1]
                stinmap[fchar] = 0
            else
                # swaps are disabled for fchar; do nothing here
            end
        else
            stinmap[fchar] = x1
        end
    end
    return strings
end

using Test
function test()
    @testset begin
        @test firstswap(["ab", "ac"]) == ["ac", "ab"]

        @test firstswap(["ax", "bx", "cx", "cy", "by", "ay", "aaa", "azz"]) ==
            ["ay", "by", "cy", "cx", "bx", "ax", "aaa", "azz"]

        @test firstswap(["ax", "bx", "ay", "by", "ai", "aj", "bx", "by"]) ==
            ["ay", "by", "ax", "bx", "ai", "aj", "bx", "by"]

    end
    nothing
end
