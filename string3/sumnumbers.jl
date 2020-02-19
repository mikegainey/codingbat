"""
String-3 > sumNumbers
https://codingbat.com/prob/p121193

Given a string, return the sum of the numbers appearing in the string, ignoring all other characters.
A number is a series of 1 or more digit chars in a row.

sumnumbers("abc123xyz") == 123
sumnumbers("aa11b33") == 44
sumnumbers("7 11") == 18
"""
function sumnumbers(s)
    sum = 0
    number = 0
    previous = "not digit"
    for c in s
        if isdigit(c)
            if previous == "not digit"
                number = parse(Int, c)
                previous = "digit"
            else
                # previous character was a digit
                number = number * 10 + parse(Int, c)
            end
        else
            # the character is not a digit
            if previous == "digit"
                sum += number
                number = 0
                previous = "not digit"
            end
        end
    end
    # take care of a number at the end of the string
    if number > 0
        sum += number
    end
    sum
end

using Test
function test()
    @testset begin
        @test sumnumbers("abc123xyz") == 123
        @test sumnumbers("aa11b33") == 44
        @test sumnumbers("7 11") == 18
    end
    nothing
end
