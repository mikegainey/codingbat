"""
https://codingbat.com/prob/p191914
Warmup-1 > notString

Given a string, return a new string where "not " has been added to the front.
However, if the string already begins with "not", return the string unchanged. Note: use .equals() to compare 2 strings.

notString("candy") → "not candy"
notString("x") → "not x"
notString("not bad") → "not bad"
"""
function notstring1(s)
    if length(s) < 3
        return string("not ", s)
    elseif s[1:3] == "not"
        return s
    else
        return string("not ", s)
    end
end

function notstring2(s)
    if length(s) ≥ 3 && s[1:3] == "not"
        return s
    else
        return string("not ", s)
    end
end

function test()
    @show(notstring2("mike"))
    @show(notstring2("not mike"))
    @show(notstring2("a"))
    nothing
end
