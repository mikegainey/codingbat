"""
https://codingbat.com/prob/p147920
Warmup-1 > front3

Given a string, we'll say that the front is the first 3 chars of the string. If the string length is less than 3,
the front is whatever is there. Return a new string which is 3 copies of the front.

front3('Java') → 'JavJavJav'
front3('Chocolate') → 'ChoChoCho'
front3('abc') → 'abcabcabc'
"""
function front3(s)
    if length(s) > 3
        front = s[1:3]
    else
        front = s
    end
    return front ^ 3
end
