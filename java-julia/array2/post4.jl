"""
https://codingbat.com/prob/p164144
Array-2 > post4

Given a non-empty array of ints,
return a new array containing the elements from the original array that come after the last 4 in the original array.
The original array will contain at least one 4. Note that it is valid in java to create an array of length 0.

post4([2, 4, 1, 2]) == [1, 2]
post4([4, 1, 4, 2]) == [2]
post4([4, 4, 1, 2, 3]) == [1, 2, 3]
"""
function post4a(xs)
    for i in length(xs) : -1 : 1
        if xs[i] == 4
            return xs[i+1 : end]
        end
    end
    xs
end

function post4b(xs, output=[])
    if length(xs) == 0
        return output
    elseif last(xs) == 4
        return output
    else
        post4b(xs[1:end-1], vcat(xs[end], output))
    end
end


using Test
function test()
    @testset begin
        @test post4a([2, 4, 1, 2]) == [1, 2]
        @test post4a([4, 1, 4, 2]) == [2]
        @test post4a([4, 4, 1, 2, 3]) == [1, 2, 3]
        @test post4b([2, 4, 1, 2]) == [1, 2]
        @test post4b([4, 1, 4, 2]) == [2]
        @test post4b([4, 4, 1, 2, 3]) == [1, 2, 3]
    end
    nothing
end

test()
