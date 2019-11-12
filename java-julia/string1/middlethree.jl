"""
https://codingbat.com/prob/p115863
String-1 > middleThree

Given a string of odd length, return the string length 3 from its middle, so "Candy" yields "and".
The string length will be at least 3.

middleThree("Candy") → "and"
middleThree("and") → "and"
middleThree("solving") → "lvi"
"""
function middlethree(str)
    index = div(length(str), 2)
    return str[index : index + 2]
end

function test()
    @show(middlethree("Candy"))
    @show(middlethree("and"))
    @show(middlethree("solving"))
    println("\n=== Enter a word or blank input to quit. ===")
    while true
        print("> ")
        input = readline()
        if input == ""
            break
        end
        println(middlethree(input))
    end
    nothing
end
