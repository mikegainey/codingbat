"""
https://codingbat.com/prob/p137874
Array-2 > tripleUp

Return true if the array contains, somewhere, three increasing adjacent numbers like .... 4, 5, 6, ... or 23, 24, 25.

tripleup([1, 4, 5, 6, 2]) == true
tripleup([1, 2, 3]) == true
tripleup([1, 2, 4]) == false
"""
function tripleup1(ns)
    for x in 1 : length(ns) - 2
        if ns[x:x+2] == ns[x]:ns[x]+2
            return true
        end
    end
    return false
end

function tripleup2(ns)
    if length(ns) < 3
        return false
    else
        if ns[1:3] == ns[1] : ns[1]+2
            return true
        else
            tripleup2(ns[2:end])
        end
    end
end


using Test
function test()
    @testset begin
        @test tripleup1([1, 4, 5, 6, 2]) == true
        @test tripleup1([1, 2, 3]) == true
        @test tripleup1([1, 2, 4]) == false
        @test tripleup2([1, 4, 5, 6, 2]) == true
        @test tripleup2([1, 2, 3]) == true
        @test tripleup2([1, 2, 4]) == false
   end
    nothing
end

test()
