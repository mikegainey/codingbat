"""
https://codingbat.com/prob/p171660
Recursion-2 > splitOdd10

Given an array of ints, is it possible to divide the ints into two groups, so that
- the sum of one group is a multiple of 10,
- and the sum of the other group is odd.
Every int must be in one group or the other.
Write a recursive helper method that takes whatever arguments you like,
and make the initial call to your recursive helper from splitOdd10(). (No loops needed.)

splitodd10([5, 5, 5]) → true
splitodd10([5, 5, 6]) → false
splitodd10([5, 5, 6, 1]) → true
"""
function splitodd10(loi, div10=[], odd=[])
    if length(loi) == 0
        if length(div10) > 0 && length(odd) > 0
            sum(div10) % 10 == 0 && sum(odd) % 2 == 1
        else
            false
        end
    else
        head = loi[1]
        tail = loi[2:end]

        splitodd10(tail, vcat(div10, head), odd) || splitodd10(tail, div10, vcat(odd, head))
    end
end

using Test
function test()
    @testset begin
        @test splitodd10([5, 5, 5]) == true
        @test splitodd10([5, 5, 6]) == false
        @test splitodd10([5, 5, 6, 1]) == true
    end
    nothing
end
