"""
https://codingbat.com/prob/p159979
Array-2 > modThree

Given an array of ints, return true if the array contains either 3 even or 3 odd values all next to each other.

modthree([2, 1, 3, 5]) == true
modthree([2, 1, 2, 5]) == false
modthree([2, 4, 2, 5]) == true
"""
function modthree1(ns, evencount=0, oddcount=0)
    if evencount ≥ 3 || oddcount ≥ 3
        return true
    elseif length(ns) == 0
        return false
    end

    if ns[1] % 2 == 0
        modthree(ns[2:end], evencount + 1, 0)
    else
        modthree(ns[2:end], 0, oddcount + 1)
    end
end

function modthree2(ns)
    evencount = 0
    oddcount = 0
    for n in ns
        if n % 2 == 0
            evencount += 1
            oddcount = 0
        else
            oddcount += 1
            evencount = 0
        end

        if evencount ≥ 3 || oddcount ≥ 3
            return true
        end
    end
    return false
end

using Test
function test()
    @testset begin
        @test modthree1([2, 1, 3, 5]) == true
        @test modthree1([2, 1, 2, 5]) == false
        @test modthree1([2, 4, 2, 5]) == true
        @test modthree2([2, 1, 3, 5]) == true
        @test modthree2([2, 1, 2, 5]) == false
        @test modthree2([2, 4, 2, 5]) == true
    end
    nothing
end

test()
