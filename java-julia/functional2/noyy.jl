"""
https://codingbat.com/prob/p115967
Functional-2 > noYY

Given a list of strings, return a list where each string has "y" added at its end,
omitting any resulting strings that contain "yy" as a substring anywhere.

noyy(["a", "b", "c"]) == ["ay", "by", "cy"]
noyy(["a", "b", "cy"]) == ["ay", "by"]
noyy(["xx", "ya", "zz"]) == ["xxy", "yay", "zzy"]
"""
function noyy(los)
    addy = map(s -> s * 'y', los)
    rmyy = filter(s -> !occursin("yy", s), addy)
    return rmyy
end

using Test
function test()
    @testset begin
        @test @show noyy(["a", "b", "c"]) == ["ay", "by", "cy"]
        @test @show noyy(["a", "b", "cy"]) == ["ay", "by"]
        @test @show noyy(["xx", "ya", "zz"]) == ["xxy", "yay", "zzy"]
    end
    nothing
end

