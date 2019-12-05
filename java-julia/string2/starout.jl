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
function starout1(s)
    output = []
    lastchar = ""
    for c in s
        if c == '*'
            if lastchar == "char"
                pop!(output)
            end
            lastchar = "star"

        else # not a star
            if lastchar != "star"
                push!(output, c)
            end
            lastchar = "char"
        end
    end
    join(output)
end

function isstar(c)
    return c == '*'
end

function starout2(s)
    if length(s) < 2
        return s
    elseif isletter(s[1]) && isletter(s[2]) # ab
        return s[1] * starout2(s[2:end])
    elseif isletter(s[1]) && isstar(s[2])   # b*
        return starout2(s[2:end])
    elseif isstar(s[1]) && isstar(s[2])     # **
        return starout2(s[2:end])
    elseif isstar(s[1]) && isletter(s[2])   # *c
        return starout2(s[3:end])
    else
        error("All cases should have been covered already!")
    end
end


using Test
function test()
    @testset begin
        @test @show starout1("ab*cd") == "ad"
        @test @show starout1("ab**cd") == "ad"
        @test @show starout1("sm*eilly") == "silly"
        @test @show starout2("ab*cd") == "ad"
        @test @show starout2("ab**cd") == "ad"
        @test @show starout2("sm*eilly") == "silly"
    end
    nothing
end

