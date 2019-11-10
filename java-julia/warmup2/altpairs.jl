"""
https://codingbat.com/prob/p121596
Warmup-2 > altPairs

Given a string, return a string made of the chars at indexes 0,1, 4,5, 8,9 ... so "kittens" yields "kien".

altPairs("kitten") → "kien"
altPairs("Chocolate") → "Chole"
altPairs("CodingHorror") → "Congrr"
"""
function altpairs(s)
    output = []
    for i in 1 : length(s)
        if (i % 4) in [1, 2]
            push!(output, s[i])
        end
    end
    return join(output)
end

function test()
    @show(altpairs("kitten"))
    @show(altpairs("Chocolate"))
    @show(altpairs("CodingHorror"))
    nothing
end
