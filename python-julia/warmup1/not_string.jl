"""
https://codingbat.com/prob/p189441
Warmup-1 > not_string

Given a string, return a new string where "not " has been added to the front.
However, if the string already begins with "not", return the string unchanged.

not_string('candy') → 'not candy'
not_string('x') → 'not x'
not_string('not bad') → 'not bad'
"""
function not_string(s)
    if s[1:3] == "not"
        return s
    else
        return string("not ", s)
    end
end
