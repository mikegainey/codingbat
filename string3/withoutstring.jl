"""
String-3 > withoutString
https://codingbat.com/prob/p192570

Given two strings, base and remove,
return a version of the base string where all instances of the remove string have been removed (not case sensitive).
You may assume that the remove string is length 1 or more.
Remove only non-overlapping instances, so with "xxx" removing "xx" leaves "x".

withoutstring("Hello there", "llo") == "He there"
withoutstring("Hello there", "e") == "Hllo thr"
withoutstring("Hello there", "x") == "Hello there"
"""
function withoutstring(base, remove)
    removelength = length(remove)
    if length(base) < removelength
        return base
    else
        if lowercase(base[1:removelength]) == lowercase(remove)
            withoutstring(base[removelength+1:end], remove)
        else
            string(base[1], withoutstring(base[2:end], remove))
        end
    end
end

using Test
function test()
    @testset begin
        @test withoutstring("Hello there", "llo") == "He there"
        @test withoutstring("Hello there", "e") == "Hllo thr"
        @test withoutstring("Hello there", "x") == "Hello there"
        @test withoutstring("Hello there", "he") == "llo tre"
    end
    nothing
end
