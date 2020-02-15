"""
https://codingbat.com/prob/p134174
AP-1 > copyEvens

Given an array of positive ints,
return a new array of length "count" containing the first even numbers from the original array.
The original array will contain at least "count" even numbers.

copyevens([3, 2, 4, 5, 8], 2) == [2, 4]
copyevens([3, 2, 4, 5, 8], 3) == [2, 4, 8]
copyevens([6, 1, 2, 4, 5, 8], 3) == [6, 2, 4]
"""
# a runtime error will occur if the list doesn't have enough even numbers
function copyevens1(ns, count)
    output = []
    x = 1
    while length(output) < count
        element = ns[x]
        if element % 2 == 0
            push!(output, element)
        end
        x += 1
    end
    output
end

# better
function copyevens2(ns, count)
    output = []
    for n in ns
        if length(output) == count
            break
        elseif n % 2 == 0
            push!(output, n)
        end
    end
    output
end

using Test
function test()
    @testset begin
        @test copyevens1([3, 2, 4, 5, 8], 2) == [2, 4]
        @test copyevens1([3, 2, 4, 5, 8], 3) == [2, 4, 8]
        @test copyevens1([6, 1, 2, 4, 5, 8], 3) == [6, 2, 4]
        @test copyevens2([3, 2, 4, 5, 8], 2) == [2, 4]
        @test copyevens2([3, 2, 4, 5, 8], 3) == [2, 4, 8]
        @test copyevens2([6, 1, 2, 4, 5, 8], 3) == [6, 2, 4]
    end
    nothing
end

test()
