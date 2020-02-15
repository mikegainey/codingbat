"""
https://codingbat.com/prob/p120633
Logic-1 > greenTicket

You have a green lottery ticket, with ints a, b, and c on it.
If the numbers are all different from each other, the result is 0.
If all of the numbers are the same, the result is 20.
If two of the numbers are the same, the result is 10.

greenTicket(1, 2, 3) → 0
greenTicket(2, 2, 2) → 20
greenTicket(1, 1, 2) → 10
"""
function greenticket(a, b, c)
    if a == b == c
        return 20
    elseif a == b || a == c || b == c
        return 10
    else
        return 0
    end
end

using Test
function test()
    @testset begin
        @test greenticket(1, 2, 3) == 0
        @test greenticket(2, 2, 2) == 20
        @test greenticket(1, 1, 2) == 10
        @test greenticket(1, 2, 1) == 10
        @test greenticket(1, 2, 2) == 10
    end
    nothing
end
