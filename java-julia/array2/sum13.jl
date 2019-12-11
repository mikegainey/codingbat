"""
https://codingbat.com/prob/p127384
Array-2 > sum13

Return the sum of the numbers in the array, returning 0 for an empty array.
Except the number 13 is very unlucky, so it does not count and numbers that come immediately after a 13 also do not count.

sum13([1, 2, 2, 1]) == 6
sum13([1, 1]) == 2
sum13([1, 2, 2, 1, 13]) == 6
"""
function sum13(xs)
    if length(xs) == 0
        return 0
    end

    head = xs[1]
    tail = xs[2:end]
    tail2 = xs[3:end]

    if head == 13
        return sum13(tail2)
    else
        return head + sum13(tail)
    end
end

using Test
function test()
    @testset begin
        @test sum13([1, 2, 2, 1]) == 6
        @test sum13([1, 1]) == 2
        @test sum13([1, 2, 2, 1, 13]) == 6
        @test sum13([1, 2, 2, 1, 13, 2]) == 6
        @test sum13([1, 2, 2, 1, 13, 2, 5]) == 11
        @test sum13([3]) == 3
        @test sum13([0]) == 0
        @test sum13([]) == 0
        @test sum13([13]) == 0
        @test sum13([13, 2]) == 0
        @test sum13([13, 2, 7]) == 7
    end
    nothing
end

test()
