"""
https://codingbat.com/prob/p191878
Array-2 > either24

Given an array of ints, return true if the array contains a 2 next to a 2 or a 4 next to a 4, but not both.

either24([1, 2, 2]) == true
either24([4, 4, 1]) == true
either24([4, 4, 1, 2, 2]) == false
"""
function either24(ns)
    last = nothing
    twos = false
    fours = false
    for n in ns
        if n == 2 && last == 2
            twos = true
        elseif n == 4 && last == 4
            fours = true
        else
            last = n
        end
    end
    twos ⊻ fours # xor(a, b)
end

using Test
function test()
    @testset begin
        @test either24([1, 2, 2]) == true
        @test either24([4, 4, 1]) == true
        @test either24([4, 4, 1, 2, 2]) == false
    end
    nothing
end

test()
