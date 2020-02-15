"""
https://codingbat.com/prob/p115243
Logic-1 > fizzString2

Given an int n, return the string form of the number followed by "!". So the int 6 yields "6!".
Except if the number is divisible by 3 use "Fizz" instead of the number,
and if the number is divisible by 5 use "Buzz",
and if divisible by both 3 and 5, use "FizzBuzz".
Note: the % "mod" operator computes the remainder after division, so 23 % 10 yields 3.
What will the remainder be when one number divides evenly into another? (See also: FizzBuzz Code and Introduction to Mod)

fizzString2(1) → "1!"
fizzString2(2) → "2!"
fizzString2(3) → "Fizz!"
"""
function fizzstring(n)
    div3 = n % 3 == 0
    div5 = n % 5 == 0
    if div3 && div5
        return "FizzBuzz!"
    elseif div3
        return "Fizz!"
    elseif div5
        return "Buzz!"
    else
        return string(n, "!")
    end
end

using Test
function test()
    @testset begin
        @test fizzstring(1) == "1!"
        @test fizzstring(2) == "2!"
        @test fizzstring(3) == "Fizz!"
        @test fizzstring(5) == "Buzz!"
        @test fizzstring(15) == "FizzBuzz!"
    end
    nothing
end

