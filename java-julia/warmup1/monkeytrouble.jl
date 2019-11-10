"""
https://codingbat.com/prob/p181646
Warmup-1 > monkeyTrouble

We have two monkeys, a and b, and the parameters aSmile and bSmile indicate if each is smiling.
We are in trouble if they are both smiling or if neither of them is smiling. Return true if we are in trouble.

monkeyTrouble(true, true) → true
monkeyTrouble(false, false) → true
monkeyTrouble(true, false) → false
"""
function monkeytrouble(asmile::Bool, bsmile::Bool)
    return asmile == bsmile
end
