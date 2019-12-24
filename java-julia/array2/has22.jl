"""
https://codingbat.com/prob/p121853
Array-2 > has22

Given an array of ints, return true if the array contains a 2 next to a 2 somewhere.

has22([1, 2, 2]) == true
has22([1, 2, 1, 2]) == false
has22([2, 1, 2]) == false
"""
function has22a(ns)
    lastnumber = ns[1]
    for n in ns[2:end]
        if n == 2 && lastnumber == 2
            return true
        else
            lastnumber = n
        end
    end
    return false
end

function has22b(ns, lastnumber=nothing)
    if length(ns) == 0
        return false
    else
        head = ns[1]
        tail = ns[2:end]
        if head == 2 && lastnumber == 2
            return true
        else
            has22b(tail, head)
        end
    end
end

using Test
function test()
    @testset begin
        @test has22a([1, 2, 2]) == true
        @test has22a([1, 2, 1, 2]) == false
        @test has22a([2, 1, 2]) == false
        @test has22b([1, 2, 2]) == true
        @test has22b([1, 2, 1, 2]) == false
        @test has22b([2, 1, 2]) == false
    end
    nothing
end

test()


