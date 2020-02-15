"""
Logic-1 > blueTicket
prev  |  next  |  chance

You have a blue lottery ticket, with ints a, b, and c on it. This makes three pairs, which we'll call ab, bc, and ac.
Consider the sum of the numbers in each pair.
- If any pair sums to exactly 10, the result is 10.
- Otherwise if the ab sum is exactly 10 more than either bc or ac sums, the result is 5.
- Otherwise the result is 0.

blueTicket(9, 1, 0) → 10
blueTicket(9, 2, 0) → 0
blueTicket(6, 1, 4) → 10
"""
function blueticket(a, b, c)
    ab, bc, ac = a+b, b+c, a+c
    if 10 in [ab, bc, ac]
        return 10
    elseif ab in [bc+10, ac+10]
        return 5
    else
        return 0
    end
end

function test()
    @testset begin
        @test blueticket(9, 1, 0) == 10
        @test blueticket(9, 2, 0) == 0
        @test blueticket(6, 1, 4) == 10
        @test blueticket(11, 8, 1) == 5
    end
    nothing
end

