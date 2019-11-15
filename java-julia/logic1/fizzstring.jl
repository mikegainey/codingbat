"""
https://codingbat.com/prob/p137136
Logic-1 > fizzString

Given a string str, if the string starts with "f" return "Fizz".
If the string ends with "b" return "Buzz".
If both the "f" and "b" conditions are true, return "FizzBuzz".
In all other cases, return the string unchanged. (See also: FizzBuzz Code)

fizzString("fig") → "Fizz"
fizzString("dib") → "Buzz"
fizzString("fib") → "FizzBuzz"
"""
function fizzstring1(str)
    if str[1] == 'f' && str[end] == 'b'
        return "FizzBuzz"
    elseif str[1] == 'f'
        return "Fizz"
    elseif str[end] == 'b'
        return "Buzz"
    else
        return str
    end
end

function fizzstring2(str)
    f = str[1] == 'f'
    b = str[end] == 'b'
    if f && b
        return "FizzBuzz"
    elseif f
        return "Fizz"
    elseif b
        return "Buzz"
    else
        return str
    end
end

# fizzString("fig") → "Fizz"
# fizzString("dib") → "Buzz"
# fizzString("fib") → "FizzBuzz"

using Test
function test()
    @testset begin
        @test fizzstring1("fig") == "Fizz"
        @test fizzstring1("dib") == "Buzz"
        @test fizzstring1("fib") == "FizzBuzz"
        @test fizzstring1("julia") == "julia"
        @test fizzstring2("fig") == "Fizz"
        @test fizzstring2("dib") == "Buzz"
        @test fizzstring2("fib") == "FizzBuzz"
        @test fizzstring2("julia") == "julia"
    end
    nothing
end
