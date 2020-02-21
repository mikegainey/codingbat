"""
String-3 > equalIsNot
https://codingbat.com/prob/p141736

Given a string, return true if the number of appearances of "is" anywhere in the string
is equal to the number of appearances of "not" anywhere in the string (case sensitive).

equalisnot("This is not") == false
equalisnot("This is notnot") == true
equalisnot("noisxxnotyynotxisi") == true
"""
function equalisnot(s, is_count=0, not_count=0)
    if length(s) < 2
        is_count == not_count
    else
        if s[1:2] == "is"
            equalisnot(s[3:end], is_count+1, not_count)
        elseif s[1:3] == "not"
            equalisnot(s[4:end], is_count, not_count+1)
        else
            equalisnot(s[2:end], is_count, not_count)
        end
    end
end

using Test
function test()
    @testset begin
        @test equalisnot("This is not") == false
        @test equalisnot("This is notnot") == true
        @test equalisnot("noisxxnotyynotxisi") == true
    end
    nothing
end
