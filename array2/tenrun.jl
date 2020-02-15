"""
https://codingbat.com/prob/p199484
Array-2 > tenRun

For each multiple of 10 in the given array, change all the values following it to be that multiple of 10,
until encountering another multiple of 10. So {2, 10, 3, 4, 20, 5} yields {2, 10, 10, 10, 20, 20}.

tenrun([2, 10, 3, 4, 20, 5]) == [2, 10, 10, 10, 20, 20]
tenrun([10, 1, 20, 2]) == [10, 10, 20, 20]
tenrun([10, 1, 9, 20]) == [10, 10, 10, 20]
"""
function tenrun1(ns)
    output = []
    mult10 = nothing
    for n in ns
        if n % 10 == 0
            push!(output, n)
            mult10 = n
        elseif mult10 ≠ nothing
            push!(output, mult10)
        else
            push!(output, n)
        end
    end
    output
end

function tenrun2(ns, mult10=nothing)
    if length(ns) == 0
        return []
    else
        head = ns[1]
        tail = ns[2:end]
        if head % 10 == 0
            vcat(head, tenrun2(tail, head))
        elseif mult10 ≠ nothing
            vcat(mult10, tenrun2(tail, mult10))
        else
            vcat(head, tenrun2(tail, mult10))
        end
    end
end



using Test
function test()
    @testset begin
        @test tenrun1([2, 10, 3, 4, 20, 5]) == [2, 10, 10, 10, 20, 20]
        @test tenrun1([10, 1, 20, 2]) == [10, 10, 20, 20]
        @test tenrun1([10, 1, 9, 20]) == [10, 10, 10, 20]
        @test tenrun2([2, 10, 3, 4, 20, 5]) == [2, 10, 10, 10, 20, 20]
        @test tenrun2([10, 1, 20, 2]) == [10, 10, 20, 20]
        @test tenrun2([10, 1, 9, 20]) == [10, 10, 10, 20]
    end
    nothing
end

test()

