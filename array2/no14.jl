"""
https://codingbat.com/prob/p136648
Array-2 > no14

Given an array of ints, return true if it contains no 1's or it contains no 4's.

no14([1, 2, 3]) == true
no14([1, 2, 3, 4]) == false
no14([2, 3, 4]) == true
"""
function no14a(ns)
    one = false
    four = false
    for n in ns
        if n == 1
            one = true
        elseif n == 4
            four = true
        end
    end
    one && four ? false : true
end

function no14b(ns, one=false, four=false)
    if length(ns) == 0
        return !(one && four)
    end

    head = ns[1]
    tail = ns[2:end]

    if head == 1
        return no14b(tail, true, four)
    elseif head == 4
        return no14b(tail, one, true)
    else
        return no14b(tail, one, four)
    end
end

using Test
function test()
    @testset begin
        @test no14a([1, 2, 3]) == true
        @test no14a([1, 2, 3, 4]) == false
        @test no14a([2, 3, 4]) == true
        @test no14b([1, 2, 3]) == true
        @test no14b([1, 2, 3, 4]) == false
        @test no14b([2, 3, 4]) == true
    end
    nothing
end

test()
