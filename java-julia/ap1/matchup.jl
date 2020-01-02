"""
https://codingbat.com/prob/p139677
AP-1 > matchUp

Given 2 arrays that are the same length containing strings,
compare the 1st string in one array to the 1st string in the other array, the 2nd to the 2nd and so on.
Count the number of times that the 2 strings are non-empty and start with the same char.
The strings may be any length, including 0.

matchup(["aa", "bb", "cc"], ["aaa", "xx", "bb"]) == 1
matchup(["aa", "bb", "cc"], ["aaa", "b", "bb"]) == 2
matchup(["aa", "bb", "cc"], ["", "", "ccc"]) == 1
"""
function matchup(as, bs)
    count = 0
    for (a, b) in zip(as, bs)
        if length(a) == 0 || length(b) == 0
            continue
        else
            if a[1] == b[1]
                count += 1
            end
        end
    end
    count
end

using Test
function test()
    @testset begin
        @test matchup(["aa", "bb", "cc"], ["aaa", "xx", "bb"]) == 1
        @test matchup(["aa", "bb", "cc"], ["aaa", "b", "bb"]) == 2
        @test matchup(["aa", "bb", "cc"], ["", "", "ccc"]) == 1
    end
    nothing
end

test()
