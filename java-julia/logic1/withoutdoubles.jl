"""
https://codingbat.com/prob/p115233
Logic-1 > withoutDoubles

Return the sum of two 6-sided dice rolls, each in the range 1..6.
However, if noDoubles is true, if the two dice show the same value,
increment one die to the next value, wrapping around to 1 if its value was 6.

withoutDoubles(2, 3, true) → 5
withoutDoubles(3, 3, true) → 7
withoutDoubles(3, 3, false) → 6
"""
function withoutdoubles(a, b, nodoubles)
    if nodoubles && a == b
        if a == 6
            return a + 1
        else
            return a + b + 1
        end
    else
        return a + b
    end
end

using Test
function test()
    @testset begin
        @test withoutdoubles(2, 3, true) == 5
        @test withoutdoubles(3, 3, true) == 7
        @test withoutdoubles(3, 3, false) == 6
        @test withoutdoubles(6, 6, true) == 7
    end
    nothing
end

