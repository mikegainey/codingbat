"""
https://codingbat.com/prob/p154188
Logic-1 > inOrder

Given three ints, a b c, return true if b is greater than a, and c is greater than b.
However, with the exception that if "bOk" is true, b does not need to be greater than a.

inOrder(1, 2, 4, false) → true
inOrder(1, 2, 1, false) → false
inOrder(1, 1, 2, true) → true
"""
function inorder(a, b, c, bok)
    if bok
        return b < c
    else
        return a < b < c
    end
end

using Test
function test()
    @testset begin
        @test inorder(1, 2, 4, false) == true
        @test inorder(1, 2, 1, false) == false
        @test inorder(1, 1, 2, true) == true
        @test inorder(5, 2, 2, true) == false
    end
    nothing
end
