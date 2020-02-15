"""
https://codingbat.com/prob/p128796
String-2 > repeatFront

Given a string and an int n, return a string made of the first n characters of the string,
followed by the first n-1 characters of the string, and so on.
You may assume that n is between 0 and the length of the string, inclusive (i.e. n >= 0 and n <= str.length()).

repeatfront("Chocolate", 4) == "ChocChoChC"
repeatfront("Chocolate", 3) == "ChoChC"
repeatfront("Ice Cream", 2) == "IcI"
"""
function repeatfront(str, n)
    output = ""
    for x in n : -1 : 1
        output = output * first(str, x)
    end
    output
end

using Test
function test()
    @testset begin
        @test repeatfront("Chocolate", 4) == "ChocChoChC"
        @test repeatfront("Chocolate", 3) == "ChoChC"
        @test repeatfront("Ice Cream", 2) == "IcI"
    end
    nothing
end

test()


