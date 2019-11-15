"""
https://codingbat.com/prob/p141061
Logic-1 > squirrelPlay

The squirrels in Palo Alto spend most of the day playing.
In particular, they play if the temperature is between 60 and 90 (inclusive).
Unless it is summer, then the upper limit is 100 instead of 90.
Given an int temperature and a boolean isSummer, return true if the squirrels play and false otherwise.

squirrelPlay(70, false) → true
squirrelPlay(95, false) → false
squirrelPlay(95, true) → true
"""
function squirrelplay(temp, issummer)
    if issummer
        return 60 ≤ temp ≤ 100
    else
        return 60 ≤ temp ≤ 90
    end
end

using Test
function test()
    @testset begin
        @test squirrelplay(70, false) == true
        @test squirrelplay(95, false) == false
        @test squirrelplay(95, true) == true
    end
    nothing
end
