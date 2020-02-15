"""
https://codingbat.com/prob/p181634
Functional-1 > copies3

Given a list of strings, return a list where each string is replaced by 3 copies of the string concatenated together.

copies3(["a", "bb", "ccc"]) == ["aaa", "bbbbbb", "ccccccccc"]
copies3(["24", "a", ""]) == ["242424", "aaa", ""]
copies3(["hello", "there"]) == ["hellohellohello", "theretherethere"]
"""
function copies3(strings)
    return map(x -> x^3, strings)
    # return [string^3 for string in strings]
    # return (x -> x^3).(strings)
end

using Test
function test()
    @testset begin
        @test copies3(["a", "bb", "ccc"]) == ["aaa", "bbbbbb", "ccccccccc"]
        @test copies3(["24", "a", ""]) == ["242424", "aaa", ""]
        @test copies3(["hello", "there"]) == ["hellohellohello", "theretherethere"]
    end
    nothing
end
