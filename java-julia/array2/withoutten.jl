"""
https://codingbat.com/prob/p196976
Array-2 > withoutTen

Return a version of the given array where all the 10's have been removed.
The remaining elements should shift left towards the start of the array as needed,
and the empty spaces a the end of the array should be 0.
So {1, 10, 10, 2} yields {1, 2, 0, 0}. You may modify and return the given array or make a new array.

withoutten([1, 10, 10, 2]) == [1, 2, 0, 0]
withoutten([10, 2, 10]) == [2, 0, 0]
withoutten([1, 99, 10]) == [1, 99, 0]
"""
function withoutten1(ns, output=[], zeros=0)
    if length(ns) == 0
        return vcat(output, repeat([0], zeros))
    end

    if ns[1] == 10
        withoutten(ns[2:end], output, zeros+1)
    else
        withoutten(ns[2:end], vcat(output, ns[1]), zeros)
    end
end

function withoutten2(ns)
    output = []
    tencount = 0
    for n in ns
        if n == 10
            tencount += 1
        else
            push!(output, n)
        end
    end
    vcat(output, repeat([0], tencount))
end

using Test
function test()
    @testset begin
        @test withoutten1([1, 10, 10, 2]) == [1, 2, 0, 0]
        @test withoutten1([10, 2, 10]) == [2, 0, 0]
        @test withoutten1([1, 99, 10]) == [1, 99, 0]
        @test withoutten2([1, 10, 10, 2]) == [1, 2, 0, 0]
        @test withoutten2([10, 2, 10]) == [2, 0, 0]
        @test withoutten2([1, 99, 10]) == [1, 99, 0]
    end
    nothing
end

test()

