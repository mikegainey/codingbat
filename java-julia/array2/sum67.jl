"""
https://codingbat.com/prob/p111327
Array-2 > sum67

Return the sum of the numbers in the array,
except ignore sections of numbers starting with a 6 and extending to the next 7
(every 6 will be followed by at least one 7). Return 0 for no numbers.

sum67([1, 2, 2]) == 5
sum67([1, 2, 2, 6, 99, 99, 7]) == 5
sum67([1, 1, 6, 7, 2]) == 4
"""
function sum67a(ns)
    count = true
    thesum = 0
    for n in ns
        if n == 6
            count = false
        end
        if count
            thesum += n
        end
        if n == 7
            count = true
        end
    end
    thesum
end

function sum67b(ns, countem=true, thesum=0)
    if length(ns) == 0
        return thesum
    end

    head = ns[1]
    tail = ns[2:end]

    if head == 6
        sum67b(tail, false, thesum)
    elseif countem
        sum67b(tail, countem, thesum + head)
    elseif head == 7
        sum67b(tail, true, thesum)
    else
        sum67b(tail, countem, thesum)
    end
end


using Test
function test()
    @testset begin
        @test sum67a([1, 2, 2]) == 5
        @test sum67a([1, 2, 2, 6, 99, 99, 7]) == 5
        @test sum67a([1, 1, 6, 7, 2]) == 4
        @test sum67b([1, 2, 2]) == 5
        @test sum67b([1, 2, 2, 6, 99, 99, 7]) == 5
        @test sum67b([1, 1, 6, 7, 2]) == 4
   end
    nothing
end

test()

