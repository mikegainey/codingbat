"""
https://codingbat.com/prob/p142539
Array-2 > fizzArray3

Given start and end numbers, return a new array containing the sequence of integers from start up to but not including end,
so start=5 and end=10 yields {5, 6, 7, 8, 9}. The end number will be greater or equal to the start number.
Note that a length-0 array is valid. (See also: FizzBuzz Code)

fizzarray3(5, 10) == [5, 6, 7, 8, 9]
fizzarray3(11, 18) == [11, 12, 13, 14, 15, 16, 17]
fizzarray3(1, 3) == [1, 2]
"""
function fizzarray3(a, z)
    collect(a:z-1)
end

using Test
function test()
    @testset begin
        @test fizzarray3(5, 10) == [5, 6, 7, 8, 9]
        @test fizzarray3(11, 18) == [11, 12, 13, 14, 15, 16, 17]
        @test fizzarray3(1, 3) == [1, 2]
    end
    nothing
end

test()
