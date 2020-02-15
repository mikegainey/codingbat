"""
https://codingbat.com/prob/p180759
String-2 > zipZap

Look for patterns like "zip" and "zap" in the string -- length-3, starting with 'z' and ending with 'p'.
Return a string where for all such words, the middle letter is gone, so "zipXzap" yields "zpXzp".

zipzap("zipXzap") == "zpXzp"
zipzap("zopzop") == "zpzp"
zipzap("zzzopzop") == "zzzpzp"
"""
function zipzap(str)
    if length(str) < 3
        return str
    end

    if str[1] == 'z' && str[3] == 'p'
        return "zp" * zipzap(str[4:end])
    else
        return str[1] * zipzap(str[2:end])
    end
end

using Test
function test()
    @testset begin
        @test zipzap("zipXzap") == "zpXzp"
        @test zipzap("zopzop") == "zpzp"
        @test zipzap("zzzopzop") == "zzzpzp"
    end
    nothing
end

test()
