"""
https://codingbat.com/prob/p139564
String-2 > starOut

Return a version of the given string, where for every star (*) in the string
the star and the chars immediately to its left and right are gone.
So "ab*cd" yields "ad" and "ab**cd" also yields "ad".

starout("ab*cd") == "ad"
starout("ab**cd") == "ad"
starout("sm*eilly") == "silly"
"""
function starout(s)
    output = []
    lastchar = ""
    for c in s
        if c == '*'
            if lastchar == "char"
                pop!(output)
            end
            lastchar = "star"

        else # not a star
            if lastchar == "star"
                # ignore this character
            else
                push!(output, c)
            end
            lastchar = "char"
        end
    end
    join(output)
end

using Test
function test()
    @testset begin
        @test @show starout("ab*cd") == "ad"
        @test @show starout("ab**cd") == "ad"
        @test @show starout("sm*eilly") == "silly"
    end
    nothing
end

