"""
https://codingbat.com/prob/p196640
Array-2 > bigDiff

Given an array length 1 or more of ints, return the difference between the largest and smallest values in the array.

bigdiff([10, 3, 5, 6]) == 7
bigdiff([7, 2, 10, 9]) == 8
bigdiff([2, 10, 7, 2]) == 8
"""
function bigdiff1(ns, largest=ns[1], smallest=ns[1])
    if length(ns) == 0
        return largest - smallest
    end

    if ns[1] < smallest
        smallest = ns[1]
    end
    if ns[1] > largest
        largest = ns[1]
    end
    bigdiff(ns[2:end], largest, smallest)
end

function bigdiff2(ns)
    smallest = ns[1]
    largest = ns[1]
    for n in ns
        if n < smallest
            smallest = n
        end
        if n > largest
            largest = n
        end
    end
    largest - smallest
end


using Test
function test()
    @testset begin
        @test bigdiff1([10, 3, 5, 6]) == 7
        @test bigdiff1([7, 2, 10, 9]) == 8
        @test bigdiff1([2, 10, 7, 2]) == 8
        @test bigdiff2([10, 3, 5, 6]) == 7
        @test bigdiff2([7, 2, 10, 9]) == 8
        @test bigdiff2([2, 10, 7, 2]) == 8
    end
    nothing
end

test()
