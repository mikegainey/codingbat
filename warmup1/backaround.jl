"""
https://codingbat.com/prob/p161642
Warmup-1 > backAround

Given a string, take the last char and return a new string with the last char added at the front and back,
so "cat" yields "tcatt". The original string will be length 1 or more.

backAround("cat") → "tcatt"
backAround("Hello") → "oHelloo"
backAround("a") → "aaa"
"""
function backaround(s)
    last = s[end]
    return string(last, s, last)
end

function test()
    @show(backaround("cat"))
    @show(backaround("Hello"))
    @show(backaround("a"))
end
