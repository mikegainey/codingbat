"""
https://codingbat.com/prob/p193753
Array-2 > zeroFront

Return an array that contains the exact same numbers as the given array,
but rearranged so that all the zeros are grouped at the start of the array.
The order of the non-zero numbers does not matter. So {1, 0, 0, 1} becomes {0 ,0, 1, 1}.
You may modify and return the given array or make a new array.

zerofront([1, 0, 0, 1]) == [0, 0, 1, 1]
zerofront([0, 1, 1, 0, 1]) == [0, 0, 1, 1, 1]
zerofront([1, 0]) == [0, 1]
"""
function zerofront(ns, zeros=[], nonzeros=[])
    if length(ns) == 0
        return vcat(zeros, nonzeros)
    else
        head = ns[1]
        tail = ns[2:end]
        if head == 0
            zerofront(tail, vcat(zeros, 0), nonzeros)
        else
            zerofront(tail, zeros, vcat(nonzeros, head))
        end
    end
end

using Test
function test()
    @testset begin
        @test zerofront([1, 0, 0, 1]) == [0, 0, 1, 1]
        @test zerofront([0, 1, 1, 0, 1]) == [0, 0, 1, 1, 1]
        @test zerofront([1, 0]) == [0, 1]
    end
    nothing
end

test()
