"""
https://codingbat.com/prob/p126880
String-2 > endOther

Given two strings, return true if either of the strings appears at the very end of the other string,
ignoring upper/lower case differences (in other words, the computation should not be "case sensitive").
Note: str.toLowerCase() returns the lowercase version of a string.

endother("Hiabc", "abc") == true
endother("AbC", "HiaBc") == true
endother("abc", "abXabc") == true
"""
function endother1(a, b)
    la = lowercase(a)
    lb = lowercase(b)
    lena = length(la)
    lenb = length(lb)
    if lena < lenb
        return la == last(lb, lena)
    elseif lenb < lena
        return lb == last(la, lenb)
    else
        return la == lb
    end
end

function endother2(a, b)
    len = min(length(a), length(b))
    return lowercase(last(a, len)) == lowercase(last(b, len))
end

using Test
function test()
    @testset begin
        @test endother1("Hiabc", "abc") == true
        @test endother1("AbC", "HiaBc") == true
        @test endother1("abc", "abXabc") == true
        @test endother2("Hiabc", "abc") == true
        @test endother2("AbC", "HiaBc") == true
        @test endother2("abc", "abXabc") == true
    end
    nothing
end

