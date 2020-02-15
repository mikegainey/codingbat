"""
https://codingbat.com/prob/p198640
Warmup-2 > stringMatch

Given 2 strings, a and b, return the number of the positions where they contain the same length 2 substring.
So "xxcaazz" and "xxbaaz" yields 3, since the "xx", "aa", and "az" substrings appear in the same place
in both strings.

stringMatch("xxcaazz", "xxbaaz") → 3
stringMatch("abc", "abc") → 2
stringMatch("abc", "axc") → 0
"""
function stringmatch(a, b)
    count = 0
    for i in 1 : min(length(a), length(b)) - 1
        if a[i:i+1] == b[i:i+1]
            count += 1
        end
    end
    return count
end

function test()
    @show(stringmatch("xxcaazz", "xxbaaz"))
    @show(stringmatch("abc", "abc"))
    @show(stringmatch("abc", "axc"))
    nothing
end
