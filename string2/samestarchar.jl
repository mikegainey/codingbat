"""
https://codingbat.com/prob/p194491
String-2 > sameStarChar

Returns true if for every '*' (star) in the string,
if there are chars both immediately before and after the star, they are the same.

samestarchar("xy*yzz") == true
samestarchar("xy*zzz") == false
samestarchar("*xa*az") == true
"""
function samestarchar(s)
    len = length(s)
    for c in 2 : len - 1
        if s[c] == '*'
            if s[c-1] != s[c+1]
                return false
            end
        end
    end
    return true
end

using Test
function test()
    @testset begin
        @test samestarchar("xy*yzz") == true
        @test samestarchar("xy*zzz") == false
        @test samestarchar("*xa*az") == true
    end
    nothing
end
