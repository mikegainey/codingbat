"""
https://codingbat.com/prob/p160543
Logic-1 > alarmClock

Given a day of the week encoded as 0=Sun, 1=Mon, 2=Tue, ...6=Sat, and a boolean indicating if we are on vacation,
return a string of the form "7:00" indicating when the alarm clock should ring.
Weekdays, the alarm should be "7:00" and on the weekend it should be "10:00".
Unless we are on vacation -- then on weekdays it should be "10:00" and weekends it should be "off".

alarmClock(1, false) → "7:00"
alarmClock(5, false) → "7:00"
alarmClock(0, false) → "10:00"
"""
function alarmclock(day, onvacation)
    if onvacation
        if day in [0, 6] # weekend
            "off"
        else # weekday
            "10:00"
        end
    else # not on vacation
        if day in [0, 6] # weekend
            "10:00"
        else # weekday
            "7:00"
        end
    end
end

using Test
function test()
    @testset begin
        @test alarmclock(1, false) == "7:00"
        @test alarmclock(5, false) == "7:00"
        @test alarmclock(0, false) == "10:00"
        @test alarmclock(1, true) == "10:00"
        @test alarmclock(0, true) == "off"
    end
    nothing
end

