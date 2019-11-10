"""
https://codingbat.com/prob/p183592
Warmup-1 > front22

Given a string, take the first 2 chars and return the string with the 2 chars added at both the front and back,
so "kitten" yields"kikittenki". If the string length is less than 2, use whatever chars are there.

front22("kitten") → "kikittenki"
front22("Ha") → "HaHaHa"
front22("abc") → "ababcab"
"""
function front22(s)
    first2 = first(s, 2)
    return string(first2, s, first2)
end

function test()
    println("Enter a string. Type quit to quit\n")
    while true
        print("> ")
        s = readline()
        if s == "quit"
            break
        end
        println(front22(s), "\n")
    end
end
