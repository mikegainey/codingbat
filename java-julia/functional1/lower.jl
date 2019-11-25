"""
https://codingbat.com/prob/p186894
Functional-1 > lower

Given a list of strings, return a list where each string is converted to lower case (Note: String toLowerCase() method).

lower(["Hello", "Hi"]) == ["hello", "hi"]
lower(["AAA", "BBB", "ccc"]) == ["aaa", "bbb", "ccc"]
lower(["KitteN", "ChocolaTE"]) == ["kitten", "chocolate"]
"""
function lower(los)
    return map(lowercase, los)
end

using Test
function test()
    @testset begin
        @test @show lower(["Hello", "Hi"]) == ["hello", "hi"]
        @test @show lower(["AAA", "BBB", "ccc"]) == ["aaa", "bbb", "ccc"]
        @test @show lower(["KitteN", "ChocolaTE"]) == ["kitten", "chocolate"]
    end
    nothing
end
