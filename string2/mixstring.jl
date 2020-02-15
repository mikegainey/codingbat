"""
https://codingbat.com/prob/p125185
String-2 > mixString

Given two strings, a and b, create a bigger string made of the first char of a, the first char of b, the second char of a, the second char of b, and so on. Any leftover chars go at the end of the result.

mixstring("abc", "xyz") == "axbycz"
mixstring("Hi", "There") == "HTihere"
mixstring("xxxx", "There") == "xTxhxexre"
"""
function mixstring(as, bs)
    if length(as) == 0
        return bs
    elseif length(bs) == 0
        return as
    else
        return as[1] * bs[1] * mixstring(as[2:end], bs[2:end])
    end
end

using Test
function test()
    @testset begin
        @test mixstring("abc", "xyz") == "axbycz"
        @test mixstring("Hi", "There") == "HTihere"
        @test mixstring("xxxx", "There") == "xTxhxexre"
    end
    nothing
end

test()


