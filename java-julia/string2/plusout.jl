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

    if lens < lenw
        return "+" ^ lens
    end

    wordhead = str[1:lenw]     # the head with the length of the word
    wordtail = str[lenw+1:end] # the rest of the string after the initial word
    tail = str[2:end]          # the string minus the first character

    if wordhead == word
        return wordhead * plusout(wordtail, word)
    else
        return "+" * plusout(tail, word)
    end
end

using Test
function test()
    @testset begin
        @test plusout("12xy34", "xy") == "++xy++"
        @test plusout("12xy34", "1") == "1+++++"
        @test plusout("12xy34xyabcxy", "xy") == "++xy++xy+++xy"
    end
    nothing
end

test()
