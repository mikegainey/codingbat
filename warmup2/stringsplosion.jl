"""
https://codingbat.com/prob/p117334
Warmup-2 > stringSplosion

Given a non-empty string like "Code" return a string like "CCoCodCode".

stringSplosion("Code") → "CCoCodCode"
stringSplosion("abc") → "aababc"
stringSplosion("ab") → "aab"
"""
function stringsplosion(s)
    output = ""
    for i in 1 : length(s)
        output = string(output, s[1:i])
    end
    return output
end

function test()
    @show(stringsplosion("Code"))
    @show(stringsplosion("abc"))
    @show(stringsplosion("ab"))
    nothing
end

