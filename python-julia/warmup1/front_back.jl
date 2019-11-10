"""
https://codingbat.com/prob/p153599
Warmup-1 > front_back

Given a string, return a new string where the first and last chars have been exchanged.

front_back('code') → 'eodc'
front_back('a') → 'a'
front_back('ab') → 'ba'
"""
function front_back(s)
    len = length(s)
    if len == 0
        return ""
    elseif len == 1
        return s
    else
        front = s[1]
        back = s[end]
        middle = s[2 : end - 1]
        return string(back, middle, front)
    end
end
