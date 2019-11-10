"""
https://codingbat.com/prob/p187868
Warmup-1 > sleepIn

The parameter weekday is true if it is a weekday, and the parameter vacation is true if we are on vacation.
We sleep in if it is not a weekday or we're on vacation. Return true if we sleep in.

sleepIn(false, false) → true
sleepIn(true, false) → false
sleepIn(false, true) → true
"""
function sleepin(weekday, vacation)
    return !weekday || vacation
end

function test()
    println("sleepin(weekday, vacation)\n")
    for vacation in [true, false]
        for weekday in [true, false]
            println("sleepin($weekday, $vacation) -> ", sleepin(weekday, vacation))
        end
    end
end
