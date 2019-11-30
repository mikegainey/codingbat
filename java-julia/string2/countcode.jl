"""
https://codingbat.com/prob/p123614
String-2 > countCode

Return the number of times that the string "code" appears anywhere in the given string,
except we'll accept any letter for the 'd', so "cope" and "cooe" count.

countcode("aaacodebbb") == 1
countcode("codexxcode") == 2
countcode("cozexxcope") == 2
"""
function countcode(str)
    eachmatch(r"co.e", str) |> collect |> length
end

function countcode2(str)
    lastx = length(str) - 3
    count = 0
    for i in 1 : lastx
        if str[i:i+1] == "co" && str[i+3] == 'e'
            count += 1
        end
    end
    count
end

using Test
function test()
    @testset begin
        @test countcode("aaacodebbb") == 1
        @test countcode("codexxcode") == 2
        @test countcode("cozexxcope") == 2
        @test countcode2("aaacodebbb") == 1
        @test countcode2("codexxcode") == 2
        @test countcode2("cozexxcope") == 2
    end
    nothing
end

