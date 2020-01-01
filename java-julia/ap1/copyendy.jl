"""
https://codingbat.com/prob/p130124
AP-1 > copyEndy

We'll say that a positive int n is "endy" if it is in the range 0..10 or 90..100 (inclusive).
Given an array of positive ints,
return a new array of length "count" containing the first endy numbers from the original array.
Decompose out a separate isEndy(int n) method to test if a number is endy.
The original array will contain at least "count" endy numbers.

copyendy([9, 11, 90, 22, 6], 2) == [9, 90]
copyendy([9, 11, 90, 22, 6], 3) == [9, 90, 6]
copyendy([12, 1, 1, 13, 0, 20], 2) == [1, 1]
"""
function isendy(n)
    0 ≤ n ≤ 10 || 90 ≤ n ≤ 100
end

function copyendy1(ns, count)
    output = []
    for n in ns
        if length(output) == count
            return output
        elseif isendy(n)
            push!(output, n)
        end
    end
    output # in case the number of endy numbers is less than count
end

function copyendy2(ns, count, output=[])
    if length(output) == count
        return output
    else
        head = ns[1]
        tail = ns[2:end]
        if isendy(head)
            copyendy2(tail, count, vcat(output, head))
        else
            copyendy2(tail, count, output)
        end
    end
end


using Test
function test()
    @testset begin
        @test copyendy1([9, 11, 90, 22, 6], 2) == [9, 90]
        @test copyendy1([9, 11, 90, 22, 6], 3) == [9, 90, 6]
        @test copyendy1([12, 1, 1, 13, 0, 20], 2) == [1, 1]
        @test copyendy2([9, 11, 90, 22, 6], 2) == [9, 90]
        @test copyendy2([9, 11, 90, 22, 6], 3) == [9, 90, 6]
        @test copyendy2([12, 1, 1, 13, 0, 20], 2) == [1, 1]
    end
    nothing
end

test()
