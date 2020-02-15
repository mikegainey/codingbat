"""
https://codingbat.com/prob/p126212
Warmup-2 > stringYak

Suppose the string "yak" is unlucky. Given a string, return a version where all the "yak" are removed,
but the "a" can be any char. The "yak" strings will not overlap.

stringYak("yakpak") → "pak"
stringYak("pakyak") → "pak"
stringYak("yak123ya") → "123ya"
"""
function stringyak1(s, out="")
    if length(s) < 3
        return string(out, s)
    elseif s[1] == 'y' && s[3] == 'k'
        stringyak1(s[4:end], out)
    else
        stringyak1(s[2:end], string(out, s[1]))
    end
end

function stringyak2(s)
    output = []
    i = 1
    while i ≤ length(s) - 2
        if s[i] == 'y' && s[i+2] == 'k'
            i += 3
            continue
        end
        push!(output, s[i])
        i += 1
    end
    return string(join(output), s[i:end])
end

function test()
    @show(stringyak1("yakpak"))
    @show(stringyak1("pakyak"))
    @show(stringyak1("yak123ya"))
    @show(stringyak2("yakpak"))
    @show(stringyak2("pakyak"))
    @show(stringyak2("yak123ya"))
    nothing
end
