"""
https://codingbat.com/prob/p111624
String-2 > catDog

Return true if the string "cat" and "dog" appear the same number of times in the given string.

catdog("catdog") == true
catdog("catcat") == false
catdog("1cat1cadodog") == true
"""
function catdog(str, cat=0, dog=0)
    if length(str) < 3
        return cat == dog
    end

    head = str[1:3]
    tail = str[4:end]

    if head == "cat"
        catdog(tail, cat+1, dog)
    elseif head == "dog"
        catdog(tail, cat, dog+1)
    else
        catdog(str[2:end], cat, dog)
    end
end

using Test
function test()
    @testset begin
        @test catdog("catdog") == true
        @test catdog("catcat") == false
        @test catdog("1cat1cadodog") == true
    end
    nothing
end

test()
