"""
https://codingbat.com/prob/p136585
Array-2 > centeredAverage

Return the "centered" average of an array of ints, which we'll say is the mean average of the values,
except ignoring the largest and smallest values in the array. If there are multiple copies of the smallest value,
ignore just one copy, and likewise for the largest value. Use int division to produce the final average.
You may assume that the array is length 3 or more.

centeredaverage([1, 2, 3, 4, 100]) == 3
centeredaverage([1, 1, 5, 5, 10, 8, 7]) == 5
centeredaverage([-10, -4, -2, -4, -2, 0]) == -3
"""
function centeredaverage1(ns)
    smallest = ns[1]
    largest = ns[1]
    totalsum = 0
    for n in ns
        totalsum += n
        if n < smallest
            smallest = n
        elseif n > largest
            largest = n
        end
    end
    centeredsum = totalsum - largest - smallest
    centeredlen = length(ns) - 2
    return centeredsum ÷ centeredlen
end

function centeredaverage2(ns, smallest=ns[1], largest=ns[1], totalsum=0, len=length(ns))
    if length(ns) == 0
        centeredsum = totalsum - largest - smallest
        centeredlen = len - 2
        return centeredsum ÷ centeredlen
    else
        head = ns[1]
        tail = ns[2:end]
        if head < smallest
            centeredaverage2(tail, head, largest, totalsum+head, len)
        elseif head > largest
            centeredaverage2(tail, smallest, head, totalsum+head, len)
        else
            centeredaverage2(tail, smallest, largest, totalsum+head, len)
        end
    end
end

using Test
function test()
    @testset begin
        @test centeredaverage1([1, 2, 3, 4, 100]) == 3
        @test centeredaverage1([1, 1, 5, 5, 10, 8, 7]) == 5
        @test centeredaverage1([-10, -4, -2, -4, -2, 0]) == -3
        @test centeredaverage2([1, 2, 3, 4, 100]) == 3
        @test centeredaverage2([1, 1, 5, 5, 10, 8, 7]) == 5
        @test centeredaverage2([-10, -4, -2, -4, -2, 0]) == -3
    end
    nothing
end

test()

