"""
https://codingbat.com/prob/p105031
Array-2 > shiftLeft

Return an array that is "left shifted" by one -- so {6, 2, 5, 3} returns {2, 5, 3, 6}.
You may modify and return the given array, or return a new array.

shiftleft([6, 2, 5, 3]) == [2, 5, 3, 6]
shiftleft([1, 2]) == [2, 1]
shiftleft([1]) == [1]
"""
function shiftleft(xs)
    if length(xs) < 2
        return xs
    else
        vcat(xs[2:end], xs[1])
    end
end

using Test
function test()
    @testset begin
        @test shiftleft([6, 2, 5, 3]) == [2, 5, 3, 6]
        @test shiftleft([1, 2]) == [2, 1]
        @test shiftleft([1]) == [1]
    end
    nothing
end

test()


