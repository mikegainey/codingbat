"""
https://codingbat.com/prob/p186672
Array-2 > only14

Given an array of ints, return true if every element is a 1 or a 4.

only14([1, 4, 1, 4]) == true
only14([1, 4, 2, 4]) == false
only14([1, 1]) == true
"""
function only14a(ns)
    for n in ns
        if n ∉ [1, 4]
            return false
        end
    end
    return true
end

function only14b(ns)
    if length(ns) == 0
        return true
    end

    if ns[1] ∉ [1, 4]
        return false
    else
        only14b(ns[2:end])
    end
end

using Test
function test()
    @testset begin
        @test only14a([1, 4, 1, 4]) == true
        @test only14a([1, 4, 2, 4]) == false
        @test only14a([1, 1]) == true
        @test only14b([1, 4, 1, 4]) == true
        @test only14b([1, 4, 2, 4]) == false
        @test only14b([1, 1]) == true
   end
    nothing
end

test()
