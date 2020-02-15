"""
https://codingbat.com/prob/p139150
AP-1 > mergeTwo

Start with two arrays of strings, A and B, each with its elements in alphabetical order and without duplicates.
Return a new array containing the first N elements from the two arrays.
The result array should be in alphabetical order and without duplicates.
A and B will both have a length which is N or more.
The best "linear" solution makes a single pass over A and B,
taking advantage of the fact that they are in alphabetical order, copying elements directly to the new array.

mergetwo(["a", "c", "z"], ["b", "f", "z"], 3) == ["a", "b", "c"]
mergetwo(["a", "c", "z"], ["c", "f", "z"], 3) == ["a", "c", "f"]
mergetwo(["f", "g", "z"], ["c", "f", "g"], 3) == ["c", "f", "g"]
"""
head(a) = a[1]
tail(a) = a[2:end]

function mergetwo(a, b, n, output=[])
    if n == 0
        return output
    else
        if head(a) < head(b)
            mergetwo(tail(a), b, n-1, vcat(output, head(a)))
        elseif head(b) < head(a)
            mergetwo(a, tail(b), n-1, vcat(output, head(b)))
        else
            mergetwo(tail(a), tail(b), n-1, vcat(output, head(a)))
        end
    end
end

using Test
function test()
    @testset begin
        @test mergetwo(["a", "c", "z"], ["b", "f", "z"], 3) == ["a", "b", "c"]
        @test mergetwo(["a", "c", "z"], ["c", "f", "z"], 3) == ["a", "c", "f"]
        @test mergetwo(["f", "g", "z"], ["c", "f", "g"], 3) == ["c", "f", "g"]
    end
    nothing
end

test()
