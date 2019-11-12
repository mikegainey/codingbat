"""
https://codingbat.com/prob/p184030
String-1 > makeOutWord

Given an "out" string length 4, such as "<<>>", and a word, return a new string
where the word is in the middle of the out string, e.g. "<<word>>".
makeOutWord("<<>>", "Yay") → "<<Yay>>"
makeOutWord("<<>>", "WooHoo") → "<<WooHoo>>"
makeOutWord("[[]]", "word") → "[[word]]"
"""
function makeoutword(out, word)
    return out[1:2] * word * out[3:4]
end

function test()
    @show(makeoutword("<<>>", "Yay"))
    @show(makeoutword("<<>>", "WooHoo"))
    @show(makeoutword("[[]]", "word"))
    nothing
end

