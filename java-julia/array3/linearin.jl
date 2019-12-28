"""
https://codingbat.com/prob/p134022
Array-3 > linearIn

Given two arrays of ints sorted in increasing order, outer and inner,
return true if all of the numbers in inner appear in outer.
The best solution makes only a single "linear" pass of both arrays,
taking advantage of the fact that both arrays are already in sorted order.

linearin([1, 2, 4, 6], [2, 4]) == true
linearin([1, 2, 4, 6], [2, 3, 4]) == false
linearin([1, 2, 4, 4, 6], [2, 4]) == true
"""
head(ns) = ns[1]
tail(ns) = ns[2:end]

function linearin1(outer, inner)
    ilen = length(inner)
    ix = 1
    for o in outer
        if o == inner[ix]
            ix += 1
            if ix > ilen
                return true
            end
        end
    end
    return false
end

# I like this better because it doesn't involve messing with indices.
function linearin2(outer, inner)
    if length(inner) == 0
        return true
    elseif length(outer) == 0
        return false
    else
        if head(outer) == head(inner)
            linearin2(tail(outer), tail(inner))
        else
            linearin2(tail(outer), inner)
        end
    end
end

using Test
function test()
    @testset begin
        @test linearin1([1, 2, 4, 6], [2, 4]) == true
        @test linearin1([1, 2, 4, 6], [2, 3, 4]) == false
        @test linearin1([1, 2, 4, 4, 6], [2, 4]) == true
        @test linearin2([1, 2, 4, 6], [2, 4]) == true
        @test linearin2([1, 2, 4, 6], [2, 3, 4]) == false
        @test linearin2([1, 2, 4, 4, 6], [2, 4]) == true
    end
    nothing
end

test()
