"""
https://codingbat.com/prob/p109783
Array-2 > haveThree

Given an array of ints, return true if the value 3 appears in the array exactly 3 times, and no 3's are next to each other.

havethree([3, 1, 3, 1, 3]) == true
havethree([3, 1, 3, 3]) == false
havethree([3, 4, 3, 3, 4]) == false
"""
function havethree1(ns)
    count3 = 0
    lastn = nothing
    for n in ns
        if n == 3 && lastn == 3
            return false
        elseif n == 3
            count3 += 1
        end
        lastn = n
    end
    count3 == 3
end

function havethree2(ns, counter=0, lastnum=nothing)
    if length(ns) == 0
        return counter == 3
    else
        head = ns[1]
        tail = ns[2:end]
        if head == 3 && lastnum == 3
            return false
        elseif head == 3
            havethree2(tail, counter+1, head)
        else
            havethree2(tail, counter, head)
        end
    end
end

using Test
function test()
    @testset begin
        @test havethree1([3, 1, 3, 1, 3]) == true
        @test havethree1([3, 1, 3, 3]) == false
        @test havethree1([3, 4, 3, 3, 4]) == false
        @test havethree2([3, 1, 3, 1, 3]) == true
        @test havethree2([3, 1, 3, 3]) == false
        @test havethree2([3, 4, 3, 3, 4]) == false
   end
    nothing
end

test()
