"""
https://codingbat.com/prob/p180920
Array-2 > fizzArray

Given a number n, create and return a new int array of length n, containing the numbers 0, 1, 2, ... n-1.
The given n may be 0, in which case just return a length 0 array.
You do not need a separate if-statement for the length-0 case; the for-loop should naturally execute 0 times in that case,
so it just works. The syntax to make a new int array is: new int[desired_length]   (See also: FizzBuzz Code)

fizzarray(4) == [0, 1, 2, 3]
fizzarray(1) == [0]
fizzarray(10) == [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
"""
function fizzarray(n)
    collect(0:n-1)
end

using Test
function test()
    @testset begin
        @test fizzarray(4) == [0, 1, 2, 3]
        @test fizzarray(1) == [0]
        @test fizzarray(10) == [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    end
    nothing
end

test()
