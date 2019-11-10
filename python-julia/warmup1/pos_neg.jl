"""
https://codingbat.com/prob/p162058
Warmup-1 > pos_neg

Given 2 int values, return True if one is negative and one is positive.
Except if the parameter "negative" is True, then return True only if both are negative.

pos_neg(1, -1, False) → True
pos_neg(-1, 1, False) → True
pos_neg(-4, -5, True) → True
"""
function pos_neg(a, b, n)
    if n == false
        if a * b < 0
            return true
        else
            return false
        end
    else # if n == true
        if a < 0 && b < 0
            return true
        else
            return false
        end
    end
end

for n in [false, true]
    for a in [1, -1]
        for b in [1, -1]
            println("pos_neg($a, $b, $n) -> ", pos_neg(a, b, n))
        end
    end
end
