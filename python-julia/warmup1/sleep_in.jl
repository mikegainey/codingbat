"""
https://codingbat.com/prob/p173401
Warmup-1 > sleep_in

The parameter weekday is True if it is a weekday, and the parameter vacation is True if we are on vacation.
We sleep in if it is not a weekday or we're on vacation. Return True if we sleep in.

sleep_in(False, False) → True
sleep_in(True, False) → False
sleep_in(False, True) → True
"""
function sleep_in(weekday, vacation)
    return !weekday || vacation
end

for weekday in [true, false]
    for vacation in [true, false]
        @show(weekday, vacation, sleep_in(weekday, vacation))
    end
end

