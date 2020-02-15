"""
https://codingbat.com/prob/p173784
Warmup-1 > stringE

Return true if the given string contains between 1 and 3 'e' chars.

stringE("Hello") → true
stringE("Heelle") → true
stringE("Heelele") → false
"""
function stringe(s)
    ecount = 0
    for c in s
        if c == 'e'
            ecount += 1
        end
    end
    return 1 ≤ ecount ≤ 3
end

function test()
    @show(stringe("Hello"))
    @show(stringe("Heelle"))
    @show(stringe("Heelele"))
    nothing
end
