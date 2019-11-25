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
    return filter(s -> !occursin("yy", s), map(s -> s * 'y', los))
end

using Test
function test()
    @testset begin
        @show noyy(["a", "b", "c"])# == ["ay", "by", "cy"]
        @show noyy(["a", "b", "cy"])# == ["ay", "by"]
        @show noyy(["xx", "ya", "zz"])# == ["xxy", "yay", "zzy"]
    end
    nothing
end

