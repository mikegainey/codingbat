"""
https://codingbat.com/prob/p177528
Functional-1 > moreY

Given a list of strings, return a list where each string has "y" added at its start and end.

moreY(["a", "b", "c"]) == ["yay", "yby", "ycy"]
moreY(["hello", "there"]) == ["yhelloy", "ytherey"]
moreY(["yay"]) == ["yyayy"]
"""
function moreY(los)
    return map(x -> string('y', x, 'y'), los)
end

using Test
function test()
    @testset begin
        @test moreY(["a", "b", "c"]) == ["yay", "yby", "ycy"]
        @test moreY(["hello", "there"]) == ["yhelloy", "ytherey"]
        @test moreY(["yay"]) == ["yyayy"]
    end
    nothing
end
