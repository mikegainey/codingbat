"""
https://codingbat.com/prob/p134250
String-2 > xyBalance

We'll say that a String is xy-balanced if for all the 'x' chars in the string,
there exists a 'y' char somewhere later in the string. So "xxy" is balanced, but "xyx" is not.
One 'y' can balance multiple 'x's. Return true if the given string is xy-balanced.

xybalance("aaxbby") == true
xybalance("aaxbb") == false
xybalance("yaaxbb") == false
"""
function xybalance(str)
    for i in length(str) : -1 : 1 # traverse the string in reverse
        c = str[i]
        if c == 'y'
            return true
        elseif c == 'x'
            return false
        end
    end
    nothing # should this be true or false (if no x's or y's are present)?
end

using Test
function test()
    @testset begin
        @test xybalance("aaxbby") == true
        @test xybalance("aaxbb") == false
        @test xybalance("yaaxbb") == false
    end
    nothing
end

test()
