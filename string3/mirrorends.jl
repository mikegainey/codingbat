"""
String-3 > mirrorEnds
https://codingbat.com/prob/p139411

Given a string, look for a mirror image (backwards) string at both the beginning and end of the given string.
In other words, zero or more characters at the very begining of the given string,
and at the very end of the string in reverse order (possibly overlapping).
For example, the string "abXYZba" has the mirror end "ab".

mirrorends("abXYZba") == "ab"
mirrorends("abca") == "a"
mirrorends("aba") == "aba"
"""
function mirrorends(s)
    for mirlen in length(s):-1:1
        firstmirlen = s[1:mirlen]
        lastmirlen = s[end-(mirlen-1):end]
        if firstmirlen == reverse(lastmirlen)
            return firstmirlen
        end
    end
    ""
end

using Test
function test()
    @testset begin
        @test mirrorends("abXYZba") == "ab"
        @test mirrorends("abca") == "a"
        @test mirrorends("aba") == "aba"
    end
    nothing
end
