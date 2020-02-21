"""
String-3 > maxBlock
https://codingbat.com/prob/p179479

Given a string, return the length of the largest "block" in the string.
A block is a run of adjacent chars that are the same.

maxblock("hoopla") == 2
maxblock("abbCCCddBBBxx") == 3
maxblock("") == 0
"""
function maxblock(s)
    previous = nothing
    count = 1
    max_count = 0
    for c in s
        if c == previous
            count += 1
        else
            count = 1
            previous = c
        end
        if count > max_count
            max_count = count
        end
    end
    max_count
end

using Test
function test()
    @testset begin
        @test maxblock("hoopla") == 2
        @test maxblock("abbCCCddBBBxx") == 3
        @test maxblock("") == 0
    end
    nothing
end
