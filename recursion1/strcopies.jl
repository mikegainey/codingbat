"""
https://codingbat.com/prob/p118182
Recursion-1 > strCopies

Given a string and a non-empty substring sub, compute recursively if at least n copies of sub appear in the string somewhere,
possibly with overlapping. N will be non-negative.

strcopies("catcowcat", "cat", 2) == true
strcopies("catcowcat", "cow", 2) == false
strcopies("catcowcat", "cow", 1) == true
"""
function strcopies(str, ss, n)
    lenss = length(ss)
    if length(str) < lenss
        return n ≤ 0
    else
        tail = str[2:end]
        if str[1:lenss] == ss
            strcopies(tail, ss, n-1)
        else
            strcopies(tail, ss, n)
        end
    end
end

using Test
function test()
    @testset begin
        @test strcopies("catcowcat", "cat", 2) == true
        @test strcopies("catcowcat", "cow", 2) == false
        @test strcopies("catcowcat", "cow", 1) == true
    end
    nothing
end

test()
