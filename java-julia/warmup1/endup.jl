"""
https://codingbat.com/prob/p125268
Warmup-1 > endUp

Given a string, return a new string where the last 3 chars are now in upper case.
If the string has less than 3 chars, uppercase whatever is there.

endUp("Hello") → "HeLLO"
endUp("hi there") → "hi thERE"
endUp("hi") → "HI"
"""
function endup(inp)
    len = length(inp)
    if len ≤ 3
        return uppercase(inp)
    else
        spt = len - 2
        return string(inp[1:spt - 1], uppercase(inp[spt:end]))
    end
end

function test()
    while true
        print("> ")
        s = readline()
        println(endup(s))
    end
end
