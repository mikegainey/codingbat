"""
https://codingbat.com/prob/p198700
Logic-2 > evenlySpaced

Given three ints, a b c, one of them is small, one is medium and one is large.
Return true if the three values are evenly spaced,
so the difference between small and medium is the same as the difference between medium and large.

evenlyspaced(2, 4, 6) == true
evenlyspaced(4, 6, 2) == true
evenlyspaced(4, 6, 3) == false
"""
function evenlyspaced(a, b, c)
    ol = sort([a, b, c])
    return ol[2] - ol[1] == ol[3] - ol[2]
end

using Test
function test()
    @testset begin
        @test evenlyspaced(2, 4, 6) == true
        @test evenlyspaced(4, 6, 2) == true
        @test evenlyspaced(4, 6, 3) == false
    end
    nothing
end
