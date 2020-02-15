"""
https://codingbat.com/prob/p153059
Array-2 > fizzBuzz

This is slightly more difficult version of the famous FizzBuzz problem which is sometimes given as a first problem
for job interviews. (See also: FizzBuzz Code.)
Consider the series of numbers beginning at start and running up to but not including end,
so for example start=1 and end=5 gives the series 1, 2, 3, 4.
Return a new String[] array containing the string form of these numbers,
except for multiples of 3, use "Fizz" instead of the number,
for multiples of 5 use "Buzz", and for multiples of both 3 and 5 use "FizzBuzz".

fizzbuzz(1, 6) == ["1", "2", "Fizz", "4", "Buzz"]
fizzbuzz(1, 8) == ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7"]
fizzbuzz(1, 11) == ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz"]
"""
function fizzbuzz1(a, b)
    output = []
    for n in a : b-1
        if n % 3 == 0 && n % 5 == 0
            nstr = "FizzBuzz"
        elseif n % 3 == 0
            nstr = "Fizz"
        elseif n % 5 == 0
            nstr = "Buzz"
        else
            nstr = string(n)
        end
        push!(output, nstr)
    end
    output
end

function fizzbuzz2(a, b, output=[])
    if a == b
        return output
    end

    if a % 3 == 0 && a % 5 == 0
        astr = "FizzBuzz"
    elseif a % 3 == 0
        astr = "Fizz"
    elseif a % 5 == 0
        astr = "Buzz"
    else
        astr = string(a)
    end

    fizzbuzz2(a+1, b, vcat(output, astr))
end

using Test
function test()
    @testset begin
        @test fizzbuzz1(1, 6) == ["1", "2", "Fizz", "4", "Buzz"]
        @test fizzbuzz1(1, 8) == ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7"]
        @test fizzbuzz1(1, 11) == ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz"]
        @test fizzbuzz2(1, 6) == ["1", "2", "Fizz", "4", "Buzz"]
        @test fizzbuzz2(1, 8) == ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7"]
        @test fizzbuzz2(1, 11) == ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz"]
    end
    nothing
end

test()
