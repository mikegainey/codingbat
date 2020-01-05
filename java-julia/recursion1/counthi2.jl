"""
https://codingbat.com/prob/p143900
Recursion-1 > countHi2

Given a string, compute recursively the number of times lowercase "hi" appears in the string,
however do not count "hi" that have an 'x' immedately before them.

counthi2("ahixhi") == 1
counthi2("ahibhi") == 2
counthi2("xhixhi") == 0
"""
# this fails when the string starts with "hi"
function counthi2a(s)
    if length(s) < 3
        return 0
    else
        if s[1] ≠ 'x' && s[2:3] == "hi"
            1 + counthi2a(s[2:end])
        else
            0 + counthi2a(s[2:end])
        end
    end
end

# with an accumulator to remember the previous character
function counthi2b(s, prevchar=nothing)
    if length(s) < 2
        return 0
    else
        if s[1:2] == "hi" && prevchar ≠ 'x'
            1 + counthi2b(s[2:end], s[1])
        else
            0 + counthi2b(s[2:end], s[1])
        end
    end
end

using Test
function test()
    @testset begin
        @test counthi2a("ahixhi") == 1
        @test counthi2a("ahibhi") == 2
        @test counthi2a("xhixhi") == 0
        # @test counthi2a("hi") == 1 # test fails when the string starts with "hi"
        @test counthi2b("ahixhi") == 1
        @test counthi2b("ahibhi") == 2
        @test counthi2b("xhixhi") == 0
        @test counthi2b("hi") == 1 # it works!
    end
    nothing
end

test()
