"""
https://codingbat.com/prob/p117665
Functional-1 > doubling

Given a list of integers, return a list where each integer is multiplied by 2.

doubling([1, 2, 3]) == [2, 4, 6]
doubling([6, 8, 6, 8, -1]) == [12, 16, 12, 16, -2]
doubling([]) == []
"""
function doubling1(loi)
    return map(x -> x * 2, loi)
end

function doubling2(loi)
    return [x*2 for x in loi]
end

function doubling3(loi)
    return (x -> x*2).(loi)
end

function doubling4(loi, out=[]) :: Array{Int}
    if length(loi) == 0
        return out
    else
        return doubling4(loi[2:end], vcat(out, loi[1] * 2))
    end
end

function doubling5(loi) :: Array{Int}
    if length(loi) == 0
        return []
    else
        return vcat(loi[1] * 2, doubling5(loi[2:end]))
    end
end

using Test
function test()
    @testset begin
        for fun in [doubling1, doubling2, doubling3]
            @test fun([1, 2, 3]) == [2, 4, 6]
            @test fun([6, 8, 6, 8, -1]) == [12, 16, 12, 16, -2]
            @test fun([]) == []
        end
    end
    nothing
end

@show doubling1([1,2,3])
@show doubling2([1,2,3])
@show doubling3([1,2,3])
@show doubling4([1,2,3])
@show doubling5([1,2,3])
nothing
