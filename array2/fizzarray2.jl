"""
https://codingbat.com/prob/p178353
Array-2 > fizzArray2

Given a number n, create and return a new string array of length n, containing the strings "0", "1" "2" .. through n-1.
N may be 0, in which case just return a length 0 array.

fizzarray2(4) == ["0", "1", "2", "3"]
fizzarray2(10) == ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
fizzarray2(2) == ["0", "1"]
"""
function fizzarray2(n)
    [string(x) for x in 0:n-1]
end

using Test
function test()
    @testset begin
        @test fizzarray2(4) == ["0", "1", "2", "3"]
        @test fizzarray2(10) == ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
        @test fizzarray2(2) == ["0", "1"]
    end
    nothing
end

test()
