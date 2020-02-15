"""
https://codingbat.com/prob/p104029
Recursion-1 > stringClean

Given a string,
return recursively a "cleaned" string where adjacent chars that are the same have been reduced to a single char.
So "yyzzza" yields "yza".

stringclean("yyzzza") == "yza"
stringclean("abbbcdd") == "abcd"
stringclean("Hello") == "Helo"
"""
function stringclean(s)
    if length(s) < 2
        return s
    else
        head = s[1]
        tail = s[2:end]
        if s[1] == s[2]
            stringclean(tail)
        else
            string(head, stringclean(tail))
        end
    end
end

using Test
function test()
    @testset begin
        @test stringclean("yyzzza") == "yza"
        @test stringclean("abbbcdd") == "abcd"
        @test stringclean("Hello") == "Helo"
    end
    nothing
end

test()
