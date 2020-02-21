"""
String-3 > notReplace
https://codingbat.com/prob/p154137

Given a string, return a string where every appearance of the lowercase word "is" has been replaced with "is not".
The word "is" should not be immediately preceeded or followed by a letter
-- so for example the "is" in "this" does not count.

notreplace("is test") == "is not test"
notreplace("is-is") == "is not-is not"
notreplace("This is right") == "This is not right"
"""
function notreplace(s, index=1)
    if index > length(s) - 1
        return s[index:end]
    else
        if s[index:index+1] == "is"

            # check the previous character if it exists
            if index > 1
                before = isletter(s[index-1])
            else
                before = false
            end

            # check the following character if it exists
            if index < length(s) - 1
                after = isletter(s[index+2])
            else
                after = false
            end

            if !before && !after
                return string("is not", notreplace(s, index+2))
            else
                return string(s[index], notreplace(s, index+1)) # code duplication!
            end
        else
            return string(s[index], notreplace(s, index+1)) # code duplication!
        end
    end
end

using Test
function test()
    @testset begin
        @test notreplace("is test") == "is not test"
        @test notreplace("is-is") == "is not-is not"
        @test notreplace("This is right") == "This is not right"
    end
    nothing
end
