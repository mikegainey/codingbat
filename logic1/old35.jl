"""
https://codingbat.com/prob/p159612
Logic-1 > old35

Return true if the given non-negative number is a multiple of 3 or 5, but not both.
Use the % "mod" operator -- see Introduction to Mod

old35(3) → true
old35(10) → true
old35(15) → false
"""
function old35(n)
    divby3 = n % 3 == 0
    divby5 = n % 5 == 0
    return divby3 != divby5
end

using Test
function test()
    @testset begin
        @test old35(3) == true
        @test old35(10) == true
        @test old35(15) == false
    end
    nothing
end

