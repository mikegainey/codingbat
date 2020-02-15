"""
https://codingbat.com/prob/p104090
Array-3 > seriesUp

Given n>=0, create an array with the pattern {1,    1, 2,    1, 2, 3,   ... 1, 2, 3 .. n}
(spaces added to show the grouping). Note that the length of the array will be 1 + 2 + 3 ... + n,
which is known to sum to exactly n*(n + 1)/2.

seriesup(3) == [1, 1, 2, 1, 2, 3]
seriesup(4) == [1, 1, 2, 1, 2, 3, 1, 2, 3, 4]
seriesup(2) == [1, 1, 2]
"""
function seriesup(n)
    output = []
    for x in 1:n
        grouping = collect(1:x)
        append!(output, grouping)
    end
    output
end

using Test
function test()
    @testset begin
        @test seriesup(3) == [1, 1, 2, 1, 2, 3]
        @test seriesup(4) == [1, 1, 2, 1, 2, 3, 1, 2, 3, 4]
        @test seriesup(2) == [1, 1, 2]
    end
    nothing
end

test()
