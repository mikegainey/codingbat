"""
https://codingbat.com/prob/p159227
Warmup-1 > posNeg

Given 2 int values, return true if one is negative and one is positive.
Except if the parameter "negative" is true, then return true only if both are negative.

posNeg(1, -1, false) → true
posNeg(-1, 1, false) → true
posNeg(-4, -5, true) → true
"""
function posneg(a, b, negative)
    if !negative
        if a * b < 0 # they have different signs
            return true
        else
            return false
        end
    elseif negative
        if a < 0 && b < 0
            return true
        else
            return false
        end
    end
end

function posneg2(a, b, negative)
    return (!negative && a * b < 0) || (negative && a < 0 && b < 0)
end

function test()
    bools = [false, true]
    for negative in bools
        for a in [-1, 1]
            for b in [-1, 1]
                @assert posneg(a, b, negative) == posneg2(a, b, negative)
                println("posneg2($a, $b, $negative) -> ", posneg2(a, b, negative))
            end
        end
    end
end
