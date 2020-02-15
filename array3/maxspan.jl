"""
https://codingbat.com/prob/p189576
Array-3 > maxSpan

Consider the leftmost and righmost appearances of some value in an array.
We'll say that the "span" is the number of elements between the two inclusive.
A single value has a span of 1. Returns the largest span found in the given array. (Efficiency is not a priority.)

maxspan([1, 2, 1, 1, 3]) == 4
maxspan([1, 4, 2, 1, 4, 1, 4]) == 6
maxspan([1, 4, 2, 1, 4, 4, 4]) == 6
"""
# with a nested loop
function maxspan1(ns)
    steps = 0
    len = length(ns)
    maxspan = 0
    for left in 1 : len-1
        for right in left+1 : len
            steps += 1
            if ns[left] == ns[right]
                span = right - left + 1
                if span > maxspan
                    maxspan = span
                end
            end
        end
    end
    @show ns, steps
    maxspan
end

#= A better way:  In an array of n elements, there will be one span of length n.  If the elements match, you're done.
Otherwise, there will be 2 spans of length n-1.  Check them next.  Then check the 3 spans of n-2.
The first match found will be the longest matching span.
=#

using Test
function test()
    @testset begin
        @test maxspan1([1, 2, 1, 1, 3]) == 4
        @test maxspan1([1, 4, 2, 1, 4, 1, 4]) == 6
        @test maxspan1([1, 4, 2, 1, 4, 4, 4]) == 6
    end
    nothing
end

test()
