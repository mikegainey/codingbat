"""
https://codingbat.com/prob/p161124
Recursion-1 > countAbc

Count recursively the total number of "abc" and "aba" substrings that appear in the given string.

countabc("abc") == 1
countabc("abcxxabc") == 2
countabc("abaxxaba") == 2
"""
function countabc(ss)
    if length(ss) < 3
        return 0
    else
        if ss[1:3] == "abc" || ss[1:3] == "aba"
            1 + countabc(ss[2:end])
        else
            0 + countabc(ss[2:end])
        end
    end
end

using Test
function test()
    @testset begin
        @test countabc("abc") == 1
        @test countabc("abcxxabc") == 2
        @test countabc("abaxxaba") == 2
    end
    nothing
end

test()
