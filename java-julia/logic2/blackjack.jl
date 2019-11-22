"""
https://codingbat.com/prob/p117019
Logic-2 > blackjack

Given 2 int values greater than 0, return whichever value is nearest to 21 without going over. Return 0 if they both go over.

blackjack(19, 21) == 21
blackjack(21, 19) == 21
blackjack(19, 22) == 19
"""
function blackjack1(a, b)
    adiff = 21 - a
    bdiff = 21 - b
    if adiff ≥ 0 && bdiff ≥ 0
        if adiff ≤ bdiff
            return a
        elseif bdiff < adiff
            return b
        end
    elseif adiff ≥ 0
        return a
    elseif bdiff ≥ 0
        return b
    else
        return 0
    end
end

function blackjack2(a, b)
    diffs = [21 - x for x in [a, b]]
    filter!(x -> x ≥ 0, diffs)
    if length(diffs) == 0
        return 0
    else
        return 21 - minimum(diffs)
    end
end

using Test
function test()
    @testset begin
        @test blackjack1(19, 21) == 21
        @test blackjack1(21, 19) == 21
        @test blackjack1(19, 22) == 19
        @test blackjack1(22, 2) == 2
        @test blackjack1(22, 25) == 0

        @test blackjack2(19, 21) == 21
        @test blackjack2(21, 19) == 21
        @test blackjack2(19, 22) == 19
        @test blackjack2(22, 2) == 2
        @test blackjack2(22, 25) == 0
    end
    nothing
end

