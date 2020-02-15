"""
https://codingbat.com/prob/p170924
Recursion-1 > changePi

Given a string, compute recursively (no loops) a new string where all appearances of "pi" have been replaced by "3.14".

changepi("xpix") == "x3.14x"
changepi("pipi") == "3.143.14"
changepi("pip") == "3.14p"
"""
function changepi1(ss)
    if length(ss) < 2
        return ss
    else
        if ss[1:2] == "pi"
            string("3.14", changepi1(ss[3:end]))
        else
            string(ss[1], changepi1(ss[2:end]))
        end
    end
end

function changepi2(ss, output="")
    if length(ss) < 2
        return string(output, ss)
    else
        if ss[1:2] == "pi"
            changepi2(ss[3:end], string(output, "3.14"))
        else
            changepi2(ss[2:end], string(output, ss[1]))
        end
    end
end

using Test
function test()
    @testset begin
        @test changepi1("xpix") == "x3.14x"
        @test changepi1("pipi") == "3.143.14"
        @test changepi1("pip") == "3.14p"
        @test changepi2("xpix") == "x3.14x"
        @test changepi2("pipi") == "3.143.14"
        @test changepi2("pip") == "3.14p"
    end
    nothing
end

test()


