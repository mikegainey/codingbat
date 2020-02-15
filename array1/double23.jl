"""
https://codingbat.com/prob/p145365
Array-1 > double23

Given an int array, return true if the array contains 2 twice, or 3 twice. The array will be length 0, 1, or 2.

double23([2, 2]) → true
double23([3, 3]) → true
double23([2, 3]) → false
"""
function double23(A)
    d = Dict()
    for a in A
        d[a] = get(d, a, 0) + 1
    end
    return get(d, 2, 0) == 2 || get(d, 3, 0) == 2
end

using Test
function test()
    @testset begin
        @test double23([2, 2]) == true
        @test double23([3, 3]) == true
        @test double23([2, 3]) == false
    end
    nothing
end
