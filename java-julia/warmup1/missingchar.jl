"""
https://codingbat.com/prob/p190570
Warmup-1 > missingChar

Given a non-empty string and an int n, return a new string where the char at index n has been removed. The value of n will be a valid index of a char in the original string (i.e. n will be in the range 0..str.length()-1 inclusive).

missingChar("kitten", 1) → "ktten"
missingChar("kitten", 0) → "itten"
missingChar("kitten", 4) → "kittn"
"""
function missingchar(s, n)
    before = s[1:n-1]
    after = s[n+1:end]
    return string(before, after)
end

function test()
    @show(missingchar("abc", 0))
    @show(missingchar("abc", 1))
    @show(missingchar("abc", 2))
    @show(missingchar("abc", 3))
    @show(missingchar("abc", 4))
end
