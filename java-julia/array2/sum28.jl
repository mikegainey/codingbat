"""
https://codingbat.com/prob/p199612
Array-2 > sum28

Given an array of ints, return true if the sum of all the 2's in the array is exactly 8.

sum28([2, 3, 2, 2, 4, 2]) == true
sum28([2, 3, 2, 2, 4, 2, 2]) == false
sum28([1, 2, 3, 4]) == false
"""
function sum28a(ns, sum2=0)
    if length(ns) == 0
        return sum2 == 8
    end

    head = ns[1]
    tail = ns[2:end]

    if head == 2
        sum28a(tail, sum2 + head)
    else
        sum28a(tail, sum2)
    end
end

function sum28b(ns)
    sum2 = 0
    for n in ns
        if n == 2
            sum2 += n
        end
    end
    sum2 == 8
end


using Test
function test()
    @testset begin
        @test sum28a([2, 3, 2, 2, 4, 2]) == true
        @test sum28a([2, 3, 2, 2, 4, 2, 2]) == false
        @test sum28a([1, 2, 3, 4]) == false
        @test sum28b([2, 3, 2, 2, 4, 2]) == true
        @test sum28b([2, 3, 2, 2, 4, 2, 2]) == false
        @test sum28b([1, 2, 3, 4]) == false
   end
    nothing
end

test()
