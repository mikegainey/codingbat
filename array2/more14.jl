"""
https://codingbat.com/prob/p104627
Array-2 > more14

Given an array of ints, return true if the number of 1's is greater than the number of 4's

more14([1, 4, 1]) == true
more14([1, 4, 1, 4]) == false
more14([1, 1]) == true
"""
function more14a(ns)
    ones = filter(x -> x == 1, ns) |> length
    fours = filter(x -> x == 4, ns) |> length
    ones > fours
end

function more14b(ns, ones=0, fours=0)
    if length(ns) == 0
        return ones > fours
    else
        head = ns[1]
        tail = ns[2:end]
        if head == 1
            more14b(tail, ones+1, fours)
        elseif head == 4
            more14b(tail, ones, fours+1)
        else
            more14b(tail, ones, fours)
        end
    end
end

function more14c(ns)
    ones = 0
    fours = 0
    for n in ns
        if n == 1
            ones += 1
        elseif n == 4
            fours += 1
        end
    end
    return ones > fours
end

using Test
function test()
    @testset begin
        @test more14a([1, 4, 1]) == true
        @test more14a([1, 4, 1, 4]) == false
        @test more14a([1, 1]) == true
        @test more14b([1, 4, 1]) == true
        @test more14b([1, 4, 1, 4]) == false
        @test more14b([1, 1]) == true
        @test more14c([1, 4, 1]) == true
        @test more14c([1, 4, 1, 4]) == false
        @test more14c([1, 1]) == true
    end
    nothing
end

test()
