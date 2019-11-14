"""
https://codingbat.com/prob/p110141
String-1 > deFront

Given a string, return a version without the first 2 chars.
Except keep the first char if it is 'a' and keep the second char if it is 'b'.
The string may be any length. Harder than it looks.

deFront("Hello") → "llo"
deFront("java") → "va"
deFront("away") → "aay"
"""
function defront(s)
    len = length(s)
    char1 = len ≥ 1 && s[1] == 'a' ? 'a' : ""
    char2 = len ≥ 2 && s[2] == 'b' ? 'b' : ""
    if len < 3
        return char1 * char2
    else
        return char1 * char2 * s[3:end]
    end
end

function test()
    @show(defront("julia"))
    @show(defront("awesome"))
    @show(defront("ebay"))
    @show(defront("ax"))
    @show(defront("xb"))
    @show(defront("cd"))
    @show(defront("a"))
    @show(defront("b"))
    @show(defront("c"))
    @show(defront(""))
    nothing
end
