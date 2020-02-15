"""
https://codingbat.com/prob/p152339
String-2 > repeatEnd

Given a string and an int n, return a string made of
n repetitions of the last n characters of the string.
You may assume that n is between 0 and the length of the string, inclusive.

repeatend("Hello", 3) == "llollollo"
repeatend("Hello", 2) == "lolo"
repeatend("Hello", 1) == "o"
"""
function repeatend(s, n)
    s[end-n+1:end] ^n
end

using Test
function test()
    @testset begin
        @test repeatend("Hello", 3) == "llollollo"
        @test repeatend("Hello", 2) == "lolo"
        @test repeatend("Hello", 1) == "o"
    end
    nothing
end
