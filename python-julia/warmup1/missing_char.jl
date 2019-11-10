"""
https://codingbat.com/prob/p149524
Warmup-1 > missing_char

Given a non-empty string and an int n, return a new string where the char at index n has been removed.
The value of n will be a valid index of a char in the original string (i.e. n will be in the range 0..len(str)-1 inclusive).

missing_char('kitten', 1) → 'ktten'
missing_char('kitten', 0) → 'itten'
missing_char('kitten', 4) → 'kittn'
"""
function missing_char(str, n)
    firstpart = str[1 : n - 1]
    secondpart = str[n + 1 : end]
    return string(firstpart, secondpart)
end

function missingchildren(str)
    output = []
    for n in 1 : length(str)
        push!(output, missing_char(str, n))
    end
    return output
end
