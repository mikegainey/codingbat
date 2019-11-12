"""
https://codingbat.com/prob/p172267
String-1 > firstHalf

Given a string of even length, return the first half. So the string "WooHoo" yields "Woo".

firstHalf("WooHoo") → "Woo"
firstHalf("HelloThere") → "Hello"
firstHalf("abcdef") → "abc"
"""
function firsthalf(str)
    endx = length(str) ÷ 2
    return str[1 : endx]
end

function test()
    @show(firsthalf("WooHoo"))
    @show(firsthalf("HelloThere"))
    @show(firsthalf("abcdef"))
    nothing
end

