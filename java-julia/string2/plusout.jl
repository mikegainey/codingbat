"""
https://codingbat.com/prob/p170829
String-2 > plusOut

Given a string and a non-empty word string,
return a version of the original String where all chars have been replaced by pluses ("+"),
except for appearances of the word string which are preserved unchanged.

plusout("12xy34", "xy") == "++xy++"
plusout("12xy34", "1") == "1+++++"
plusout("12xy34xyabcxy", "xy") == "++xy++xy+++xy"
"""
function plusout(str, word)
    lens = length(str)
    lenw = length(word)

    if lens < length(word)
        return "+" ^ lens
    else
        if str[1:lenw] == word
            return word * plusout(str[lenw+1:end], word)
        else
            return "+" ^ lenw *

