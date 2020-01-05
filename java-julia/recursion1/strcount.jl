"""
https://codingbat.com/prob/p186177
Recursion-1 > strCount

Given a string and a non-empty substring sub, compute recursively the number of times that sub appears in the string,
without the sub strings overlapping.

strcount("catcowcat", "cat") == 2
strcount("catcowcat", "cow") == 1
strcount("catcowcat", "dog") == 0
"""
function strcount(str, ss)
    lss = length(ss)
    if length(str) < lss
        return 0
    else
        if str[1:lss] == ss
            1 + strcount(str[lss+1:end], ss)
        else
            0 + strcount(str[2:end], ss)
        end
    end
end

using Test
function test()
    @testset begin
        @test strcount("catcowcat", "cat") == 2
        @test strcount("catcowcat", "cow") == 1
        @test strcount("catcowcat", "dog") == 0
    end
    nothing
end

test()
