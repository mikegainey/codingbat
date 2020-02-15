"""
https://codingbat.com/prob/p199720
Warmup-1 > startOz

Given a string, return a string made of the first 2 chars (if present),
however include first char only if it is 'o' and include the second only if it is 'z', so "ozymandias" yields "oz".

startOz("ozymandias") → "oz"
startOz("bzoo") → "z"
startOz("oxx") → "o"
"""
function startoz(s)
    template = "oz"
    output = []
    for i in 1:2
        if s[i] == template[i]
            push!(output, template[i])
        end
    end
    return join(output)
end

function test()
    @show(startoz("ozymandias"))
    @show(startoz("bzoo"))
    @show(startoz("oxx"))
    nothing
end
