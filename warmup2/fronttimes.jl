"""
https://codingbat.com/prob/p101475
Warmup-2 > frontTimes

Given a string and a non-negative int n, we'll say that the front of the string is the first 3 chars,
or whatever is there if the string is less than length 3. Return n copies of the front;

frontTimes("Chocolate", 2) → "ChoCho"
frontTimes("Chocolate", 3) → "ChoChoCho"
frontTimes("Abc", 3) → "AbcAbcAbc"
"""
function fronttimes(s, n)
    front = first(s, 3)
    return front ^n
end

function test()
    @show(fronttimes("Chocolate", 2))
    @show(fronttimes("Chocolate", 3))
    @show(fronttimes("Abc", 3))
    nothing
end

