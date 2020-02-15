"""
https://codingbat.com/prob/p134300
Array-2 > sameEnds

Return true if the group of N numbers at the start and end of the array are the same.
For example, with {5, 6, 45, 99, 13, 5, 6}, the ends are the same for n=0 and n=2, and false for n=1 and n=3.
You may assume that n is in the range 0..nums.length inclusive.

sameends([5, 6, 45, 99, 13, 5, 6], 1) == false
sameends([5, 6, 45, 99, 13, 5, 6], 2) == true
sameends([5, 6, 45, 99, 13, 5, 6], 3) == false
"""
function sameends(xs, n)
    xs[1:n] == xs[end - n + 1:end]
end

using Test
function test()
    @testset begin
        @test sameends([5, 6, 45, 99, 13, 5, 6], 1) == false
        @test sameends([5, 6, 45, 99, 13, 5, 6], 2) == true
        @test sameends([5, 6, 45, 99, 13, 5, 6], 3) == false
    end
    nothing
end

test()

