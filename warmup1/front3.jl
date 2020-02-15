"""
https://codingbat.com/prob/p136351
Warmup-1 > front3

Given a string, we'll say that the front is the first 3 chars of the string.
If the string length is less than 3, the front is whatever is there. Return a new string which is 3 copies of the front.

front3("Java") → "JavJavJav"
front3("Chocolate") → "ChoChoCho"
front3("abc") → "abcabcabc"
"""
function front3(s)
    return first(s, 3) ^3
end

function test()
    println("Enter a string. Type quit to quit\n")
    while true
        print("> ")
        s = readline()
        if s == "quit"
            break
        end
        println(front3(s), "\n")
    end
end
