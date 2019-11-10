"""
https://codingbat.com/prob/p120546
Warmup-1 > monkey_trouble

We have two monkeys, a and b, and the parameters a_smile and b_smile indicate if each is smiling.
We are in trouble if they are both smiling or if neither of them is smiling. Return True if we are in trouble.

monkey_trouble(True, True) → True
monkey_trouble(False, False) → True
monkey_trouble(True, False) → False
"""
function monkey_trouble(a_smile, b_smile)
    return a_smile == b_smile
end

function test()
    for a in [true, false]
        for b in [true, false]
            println(a, "\t", b, "\t-> " , monkey_trouble(a, b))
        end
    end
end
