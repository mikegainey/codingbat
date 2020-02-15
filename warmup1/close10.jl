"""
https://codingbat.com/prob/p172021
Warmup-1 > close10

Given 2 int values, return whichever value is nearest to the value 10, or return 0 in the event of a tie.
Note that Math.abs(n) returns the absolute value of a number.

close10(8, 13) → 8
close10(13, 8) → 8
close10(13, 7) → 0
"""
function close10(a, b)
    adist = abs(10 - a)
    bdist = abs(10 - b)
    if adist < bdist
        return a
    elseif bdist < adist
        return b
    else
        return 0
    end
end

function test()
    # @show(close10(8, 13))
    # @show(close10(13, 8))
    # @show(close10(13, 7))
    for a in 8:12
        for b in 8:12
            println("close10($a,$b) -> ", close10(a,b))
        end
    end
    nothing
end
