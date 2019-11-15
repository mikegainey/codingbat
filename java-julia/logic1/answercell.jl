"""
https://codingbat.com/prob/p110973
Logic-1 > answerCell

Your cell phone rings. Return true if you should answer it.
Normally you answer, except in the morning you only answer if it is your mom calling.
In all cases, if you are asleep, you do not answer.

answerCell(false, false, false) → true
answerCell(false, false, true) → false
answerCell(true, false, false) → false
"""
function answercell(morning, mom, asleep)
    if asleep
        return false
    elseif mom
        return true
    elseif morning
        return false
    else
        return true
    end
end

using Test
function test()
    @testset begin
        @test answercell(false, false, false) == true
        @test answercell(false, false, true) == false
        @test answercell(true, false, false) == false
    end
    nothing
end


