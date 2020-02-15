"""
https://codingbat.com/prob/p193817
Array-3 > countClumps

Say that a "clump" in an array is a series of 2 or more adjacent elements of the same value.
Return the number of clumps in the given array.

countclumps([1, 2, 2, 3, 4, 4]) == 2
countclumps([1, 1, 2, 1, 1]) == 2
countclumps([1, 1, 1, 1, 1]) == 1
"""
function countclumps1(ns, last=nothing, count=0, clumps=0)
    if length(ns) == 0
        return clumps
    else
        head = ns[1]
        tail = ns[2:end]
        if head ≠ last
            countclumps1(tail, head, 1, clumps)
        elseif head == last
            if count == 1
                countclumps1(tail, head, 2, clumps+1)
            else
                countclumps1(tail, head, count+1, clumps)
            end
        end
    end
end

function countclumps2(ns)
    last = nothing
    count = 0
    clumps = 0
    for n in ns
        if n == last
            count += 1
            if count == 2
                clumps += 1
            end
        else
            count = 1
        end
        last = n
    end
    clumps
end

using Test
function test()
    @testset begin
        @test countclumps1([1, 2, 2, 3, 4, 4]) == 2
        @test countclumps1([1, 1, 2, 1, 1]) == 2
        @test countclumps1([1, 1, 1, 1, 1]) == 1
        @test countclumps2([1, 2, 2, 3, 4, 4]) == 2
        @test countclumps2([1, 1, 2, 1, 1]) == 2
        @test countclumps2([1, 1, 1, 1, 1]) == 1
    end
    nothing
end

test()
