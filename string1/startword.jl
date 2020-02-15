"""
https://codingbat.com/prob/p141494
String-1 > startWord

Given a string and a second "word" string, we'll say that the word matches the string if it appears
at the front of the string, except its first char does not need to match exactly. On a match,
return the front of the string, or otherwise return the empty string. So, so with the string "hippo"
the word "hi" returns "hi" and "xip" returns "hip". The word will be at least length 1.

startWord("hippo", "hi") → "hi"
startWord("hippo", "xip") → "hip"
startWord("hippo", "i") → "h"
"""
function startword(str, word)
    len = length(word)
    # make str the same length as word
    str2 = first(str, len)
    # handle special cases of word lengths 0 and 1
    if len == 0
        return ""
    elseif len == 1
        return str2
    elseif str2[2:end] == word[2:end] # check for a match
        return str2
    else
        return str[1]
    end
end

function test()
    @show(startword("hippo", "hi"))
    @show(startword("hippo", "xip"))
    @show(startword("hippo", "i"))
    @show(startword("hippo", "potamus"))
    @show(startword("hippo", ""))
    nothing
end

