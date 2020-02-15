"""
https://codingbat.com/prob/p136594
String-2 > xyzThere

Return true if the given string contains an appearance of "xyz" where the xyz is not directly preceeded by a period (.).
So "xxyz" counts but "x.xyz" does not.

xyzthere("abcxyz") == true
xyzthere("abc.xyz") == false
xyzthere("xyz.abc") == true
"""
function xyzthere(str)
    for i in 1 : length(str) - 2
        if str[i:i+2] == "xyz"
            if i == 1
                return true
            elseif str[i-1] ≠ '.'
                return true
            end
        end
    end
    return false
end

using Test
function test()
    @testset begin
        @test xyzthere("abcxyz") == true
        @test xyzthere("abc.xyz") == false
        @test xyzthere("xyz.abc") == true
    end
    nothing
end

test()
