"""
https://codingbat.com/prob/p196409
Array-3 > maxMirror

We'll say that a "mirror" section in an array is a group of contiguous elements such that somewhere in the array,
the same group appears in reverse order.
For example, the largest mirror section in {1, 2, 3, 8, 9, 3, 2, 1} is length 3 (the {1, 2, 3} part).
Return the size of the largest mirror section found in the given array.

maxmirror([1, 2, 3, 8, 9, 3, 2, 1]) == 3
maxmirror([1, 2, 1, 4]) == 3
maxmirror([7, 1, 2, 9, 7, 2, 1]) == 2
"""
# find the largest common subset of the array and a reversed copy of itself
# check the length(ns) subset, check the 4 length(ns)-1 subsets, check the length(ns)-2 subsets, ...
function maxmirror(ns, revns=reverse(ns))
    steps = 0
    len = length(ns)
    for mlen in len : -1 : 1
        lastx = len - mlen + 1
        for fx in 1 : lastx
            for rx in 1 : lastx
                steps += 1
                fslice = ns[fx:fx+mlen-1]
                rslice = revns[rx:rx+mlen-1]
                if fslice == rslice
                    @show steps
                    return mlen
                end
            end
        end
    end
    return 0 # this will never happen
end

using Test
function test()
    @testset begin
        @test maxmirror([1, 2, 3, 8, 9, 3, 2, 1]) == 3
        @test maxmirror([1, 2, 1, 4]) == 3
        @test maxmirror([7, 1, 2, 9, 7, 2, 1]) == 2
    end
    nothing
end

test()
