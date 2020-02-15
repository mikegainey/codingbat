"""
https://codingbat.com/prob/p159531
Logic-1 > cigarParty

When squirrels get together for a party, they like to have cigars. A squirrel party is successful when
the number of cigars is between 40 and 60, inclusive. Unless it is the weekend, in which case
there is no upper bound on the number of cigars. Return true if the party with the given values is successful,
or false otherwise.

cigarParty(30, false) → false
cigarParty(50, false) → true
cigarParty(70, true) → true
"""
function cigarparty(cigars, weekend)
    if weekend
        return cigars > 40
    else
        return 40 ≤ cigars ≤ 60
    end
end

using Test

function test()
    @testset begin
        @test cigarparty(30, false) == false
        @test cigarparty(50, false) == true
        @test cigarparty(70, true) == true
    end
    nothing
end
