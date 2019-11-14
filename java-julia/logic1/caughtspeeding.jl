"""
https://codingbat.com/prob/p157733
Logic-1 > caughtSpeeding

You are driving a little too fast, and a police officer stops you. Write code to compute the result,
encoded as an int value: 0=no ticket, 1=small ticket, 2=big ticket.
If speed is 60 or less, the result is 0.
If speed is between 61 and 80 inclusive, the result is 1.
If speed is 81 or more, the result is 2.
Unless it is your birthday -- on that day, your speed can be 5 higher in all cases.

caughtSpeeding(60, false) → 0
caughtSpeeding(65, false) → 1
caughtSpeeding(65, true) → 0
"""
function caughtspeeding(speed, birthday)
    noticket = 0
    smallticket = 1
    bigticket = 2
    birthdaypass = birthday ? 5 : 0
    if speed ≤ 60 + birthdaypass
        return noticket
    elseif (61 + birthdaypass) ≤ speed ≤ (80 + birthdaypass)
        return smallticket
    else
        return bigticket
    end
end

using Test
function test()
    @testset begin
        @test caughtspeeding(60, false) == 0
        @test caughtspeeding(65, false) == 1
        @test caughtspeeding(80, false) == 1
        @test caughtspeeding(81, false) == 2
        @test caughtspeeding(65, true) == 0
        @test caughtspeeding(85, true) == 1
        @test caughtspeeding(86, true) == 2
    end
    nothing
end

