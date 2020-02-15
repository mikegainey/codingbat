"""
https://codingbat.com/prob/p122943
String-2 > oneTwo

Given a string, compute a new string by moving the first char to come after the next two chars,
so "abc" yields "bca". Repeat this process for each subsequent group of 3 chars, so "abcdef" yields "bcaefd".
Ignore any group of fewer than 3 chars at the end.

onetwo("abc") == "bca"
onetwo("tca") == "cat"
onetwo("tcagdo") == "catdog"
"""
function onetwo1(str)
    if length(str) < 3
        return str
    else
        return str[2:3] * str[1] * onetwo(str[4:end])
    end
end

function onetwo2(str, acc="")
    if length(str) < 3
        return acc * str
    else
        return onetwo2(str[4:end], acc * str[2:3] * str[1])
    end
end

using Test
function test()
    @testset begin
        @test onetwo1("abc") == "bca"
        @test onetwo1("tca") == "cat"
        @test onetwo1("tcagdo") == "catdog"
        @test onetwo2("abc") == "bca"
        @test onetwo2("tca") == "cat"
        @test onetwo2("tcagdo") == "catdog"
    end
    nothing
end

test()
