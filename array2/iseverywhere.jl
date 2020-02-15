"""
https://codingbat.com/prob/p110222
Array-2 > isEverywhere

We'll say that a value is "everywhere" in an array if for every pair of adjacent elements in the array,
at least one of the pair is that value. Return true if the given value is everywhere in the array.

iseverywhere([1, 2, 1, 3], 1) == true
iseverywhere([1, 2, 1, 3], 2) == false
iseverywhere([1, 2, 1, 3, 4], 1) == false
"""
function iseverywhere1(ns, val)
    for i in 1 : length(ns) - 1
        if val ∉ ns[i:i+1]
            return false
        end
    end
    return true
end

function iseverywhere2(ns, val)
    if length(ns) < 2
        return true
    end

    if val ∉ ns[1:2]
        return false
    else
        iseverywhere2(ns[2:end], val)
    end
end

using Test
function test()
    @testset begin
        @test iseverywhere1([1, 2, 1, 3], 1) == true
        @test iseverywhere1([1, 2, 1, 3], 2) == false
        @test iseverywhere1([1, 2, 1, 3, 4], 1) == false
        @test iseverywhere2([1, 2, 1, 3], 1) == true
        @test iseverywhere2([1, 2, 1, 3], 2) == false
        @test iseverywhere2([1, 2, 1, 3, 4], 1) == false
   end
    nothing
end

test()
