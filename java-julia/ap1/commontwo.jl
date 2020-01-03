"""
https://codingbat.com/prob/p100369
AP-1 > commonTwo

Start with two arrays of strings, a and b, each in alphabetical order, possibly with duplicates.
Return the count of the number of strings which appear in both arrays.
The best "linear" solution makes a single pass over both arrays,
taking advantage of the fact that they are in alphabetical order.

commontwo(["a", "c", "x"], ["b", "c", "d", "x"]) == 2
commontwo(["a", "c", "x"], ["a", "b", "c", "x", "z"]) == 3
commontwo(["a", "b", "c"], ["a", "b", "c"]) == 3
"""
head(xs) = xs[1]
tail(xs) = xs[2:end]

function commontwo1(as, bs, count=0)
    if length(as) == 0 || length(bs) == 0
        return count
    else
        if head(as) == head(bs)
            commontwo1(tail(as), tail(bs), count+1)
        elseif head(as) < head(bs)
            commontwo1(tail(as), bs, count)
        elseif head(bs) < head(as)
            commontwo1(as, tail(bs), count)
        else
            error("Not all cases are covered in the if-elseif block.")
        end
    end
end

function commontwo2(a, b)
    count = 0
    ax = 1; bx = 1
    while ax ≤ length(a) && bx ≤ length(b) # while both indices are valid
        if a[ax] == b[bx]
            count += 1
            ax += 1
            bx += 1
        elseif a[ax] < b[bx]
            ax += 1
        elseif b[bx] < a[ax]
            bx += 1
        else
            error("Not all cases are covered in the if-elseif block.")
        end
    end
    count
end

using Test
function test()
    @testset begin
        @test commontwo1(["a", "c", "x"], ["b", "c", "d", "x"]) == 2
        @test commontwo1(["a", "c", "x"], ["a", "b", "c", "x", "z"]) == 3
        @test commontwo1(["a", "b", "c"], ["a", "b", "c"]) == 3
        @test commontwo2(["a", "c", "x"], ["b", "c", "d", "x"]) == 2
        @test commontwo2(["a", "c", "x"], ["a", "b", "c", "x", "z"]) == 3
        @test commontwo2(["a", "b", "c"], ["a", "b", "c"]) == 3
    end
    nothing
end

test()


