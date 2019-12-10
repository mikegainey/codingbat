"""
https://codingbat.com/prob/p147538
String-2 > wordEnds

Given a string and a non-empty word string,
return a string made of each char just before and just after every appearance of the word in the string.
Ignore cases where there is no char before or after the word, and a char may be included twice if it is between two words.

wordends("abcXY123XYijk", "XY") == "c13i"
wordends("XY123XY", "XY") == "13"
wordends("XY1XY", "XY") == "11"
"""
function wordends1(str, word)
    output = ""
    lenw = length(word)
    lenstr = length(str)
    for i in 1 : lenstr - lenw + 1
        if str[i:i + lenw - 1] == word
            if i > 1
                output *= str[i-1]
            end
            if (i + lenw) ≤ lenstr
                output *= str[i+lenw]
            end
        end
    end
    output
end

function wordends2(str, word, output="")
    if length(str) <= length(word)
        return output
    end

    lenw = length(word)
    tail = str[2:end]

    if str[1:lenw] == word
        wordends2(tail, word, output * str[lenw+1])
    elseif str[2:lenw+1] == word
        wordends2(tail, word, output * str[1])
    else
        wordends2(tail, word, output)
    end
end

using Test
function test()
    @testset begin
        @test wordends1("abcXY123XYijk", "XY") == "c13i"
        @test wordends1("XY123XY", "XY") == "13"
        @test wordends1("XY1XY", "XY") == "11"
        @test wordends2("abcXY123XYijk", "XY") == "c13i"
        @test wordends2("XY123XY", "XY") == "13"
        @test wordends2("XY1XY", "XY") == "11"
    end
    nothing
end

test()
