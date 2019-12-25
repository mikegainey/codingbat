"""
https://codingbat.com/prob/p169260
Array-2 > has12

Given an array of ints, return true if there is a 1 in the array with a 2 somewhere later in the array.

has12([1, 3, 2]) == true
has12([3, 1, 2]) == true
has12([3, 1, 4, 5, 2]) == true
"""
function has12(ns)
    seenone = false
    for n in ns
        if n == 2 && seenone
            return true
        elseif n == 1
            seenone = true
        end
    end
    return false
end

using Test
function test()
    @testset begin
        @test has12([1, 3, 2]) == true
        @test has12([3, 1, 2]) == true
        @test has12([3, 1, 4, 5, 2]) == true
        @test has12([3, 2, 4, 5, 2]) == false
        @test has12([3, 1, 4, 5, 3]) == false
        @test has12([3, 2, 4, 5, 1]) == false
    end
    nothing
end

test()
