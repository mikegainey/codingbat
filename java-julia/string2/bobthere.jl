"""
https://codingbat.com/prob/p175762
String-2 > bobThere

Return true if the given string contains a "bob" string, but where the middle 'o' char can be any char.

bobthere("abcbob") == true
bobthere("b9b") == true
bobthere("bac") == false
"""
function bobthere(str)
    occursin(r"b.b", str)
end

using Test
function test()
    @testset begin
        @test bobthere("abcbob") == true
        @test bobthere("b9b") == true
        @test bobthere("bac") == false
    end
    nothing
end