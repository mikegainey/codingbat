"""
https://codingbat.com/prob/p103360
Logic-1 > dateFashion

You and your date are trying to get a table at a restaurant.
The parameter "you" is the stylishness of your clothes, in the range 0..10,
and "date" is the stylishness of your date's clothes.
The result getting the table is encoded as an int value with 0=no, 1=maybe, 2=yes.
If either of you is very stylish, 8 or more, then the result is 2 (yes).
With the exception that if either of you has style of 2 or less, then the result is 0 (no).
Otherwise the result is 1 (maybe).

dateFashion(5, 10) → 2
dateFashion(5, 2) → 0
dateFashion(5, 5) → 1
"""
function datefashion(you, date)
    no, maybe, yes = 0, 1, 2
    if min(you, date) ≤ 2
        return no
    elseif max(you, date) ≥ 8
        return yes
    else
        return maybe
    end
end

using Test
function test()
    @testset begin
        @test datefashion(5, 10) == 2
        @test datefashion(5, 2) == 0
        @test datefashion(5, 5) == 1
    end
    nothing
end
