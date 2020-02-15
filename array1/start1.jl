"""
https://codingbat.com/prob/p109660
Array-1 > start1

Start with 2 int arrays, a and b, of any length. Return how many of the arrays have 1 as their first element.

start1([1, 2, 3], [1, 3]) → 2
start1([7, 2, 3], [1]) → 1
start1([1, 2], []) → 1
"""
function start1(arrays...)
    count = 0
    for array in arrays
        length(array) == 0 && continue
        array[1] == 1 && (count += 1)
    end
    return count
end

using Test
function test()
    @testset begin
        @test start1([1, 2, 3], [1, 3]) == 2
        @test start1([7, 2, 3], [1]) == 1
        @test start1([1, 2], []) == 1
    end
    nothing
end

