"""
https://codingbat.com/prob/p155405
Array-3 > squareUp

Given n>=0, create an array length n*n with the following pattern,
shown here for n=3 : {0, 0, 1,    0, 2, 1,    3, 2, 1} (spaces added to show the 3 groups).

squareup(3) == [0, 0, 1, 0, 2, 1, 3, 2, 1]
squareup(2) == [0, 1, 2, 1]
squareup(4) == [0, 0, 0, 1, 0, 0, 2, 1, 0, 3, 2, 1, 4, 3, 2, 1]
"""
function squareup(n)
    output = []
    for x in 1 : n
        numbers = 1:x |> collect |> reverse
        zeros = repeat([0], n - length(numbers))
        group = vcat(zeros, numbers)
        append!(output, group)
    end
    output
end

using Test
function test()
    @testset begin
        @test squareup(3) == [0, 0, 1, 0, 2, 1, 3, 2, 1]
        @test squareup(2) == [0, 1, 2, 1]
        @test squareup(4) == [0, 0, 0, 1, 0, 0, 2, 1, 0, 3, 2, 1, 4, 3, 2, 1]
    end
    nothing
end

test()
