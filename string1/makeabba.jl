"""
https://codingbat.com/prob/p161056
String-1 > makeAbba

Given two strings, a and b, return the result of putting them together in the order abba,
e.g. "Hi" and "Bye" returns "HiByeByeHi".

makeAbba("Hi", "Bye") → "HiByeByeHi"
makeAbba("Yo", "Alice") → "YoAliceAliceYo"
makeAbba("What", "Up") → "WhatUpUpWhat"
"""
function makeabba(a, b)
    return string(a, b, b, a)
end

function test()
    @show(makeabba("Hi", "Bye"))
    @show(makeabba("Yo", "Alice"))
    @show(makeabba("What", "Up"))
    nothing
end

