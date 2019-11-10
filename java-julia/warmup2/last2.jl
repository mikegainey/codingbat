"""
https://codingbat.com/prob/p178318
Warmup-2 > last2

Given a string, return the count of the number of times that a substring length 2 appears in the string
and also as the last 2 chars of the string, so "hixxxhi" yields 1 (we won't count the end substring).

last2("hixxhi") → 1
last2("xaxxaxaxx") → 1
last2("axxxaaxx") → 2
"""
function last2(s)
    len = length(s)
    l2 = s[end - 1 : end]
    count = 0
    for i in 1 : len - 3
        if s[i:i+1] == l2
            count += 1
        end
    end
    return count
end

function test()
    @show(last2("hixxhi"))
    @show(last2("xaxxaxaxx"))
    @show(last2("axxxaaxx"))
    nothing
end

