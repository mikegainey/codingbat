"""
https://codingbat.com/prob/p165666
Warmup-2 > stringBits

Given a string, return a new string made of every other char starting with the first, so "Hello" yields "Hlo".

stringBits("Hello") → "Hlo"
stringBits("Hi") → "H"
stringBits("Heeololeo") → "Hello"
"""
function stringbits(str)
    return str[1:2:end]
end

function test()
    @show(stringbits("Hello"))
    @show(stringbits("Hi"))
    @show(stringbits("Heeololeo"))
    nothing
end
