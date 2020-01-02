"""
https://codingbat.com/prob/p165941
AP-1 > dividesSelf

We'll say that a positive int divides itself if every digit in the number divides into the number evenly.
So for example 128 divides itself since 1, 2, and 8 all divide into 128 evenly.
We'll say that 0 does not divide into anything evenly, so no number with a 0 digit divides itself.
Note: use % to get the rightmost digit, and / to discard the rightmost digit.

dividesself(128) == true
dividesself(12) == true
dividesself(120) == false
"""
function dividesself(n)
    digits = n
    while digits > 0
        (digits, digit) = divrem(digits, 10)
        if digit == 0 || n % digit ≠ 0
            return false
        end
    end
    true
end

using Test
function test()
    @testset begin
        @test dividesself(128) == true
        @test dividesself(12) == true
        @test dividesself(120) == false
    end
    nothing
end

test()
