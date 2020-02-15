"""
https://codingbat.com/prob/p109537
Array-1 > biggerTwo

Start with 2 int arrays, a and b, each length 2. Consider the sum of the values in each array.
Return the array which has the largest sum. In event of a tie, return a.

biggertwo([1, 2], [3, 4]) → [3, 4]
biggertwo([3, 4], [1, 2]) → [3, 4]
biggertwo([1, 1], [1, 2]) → [1, 2]
"""
function biggertwo(A, B)
    return sum(A) ≥ sum(B) ? A : B
end

using Test
function test()
    @testset begin
        @test biggertwo([1, 2], [3, 4]) == [3, 4]
        @test biggertwo([3, 4], [1, 2]) == [3, 4]
        @test biggertwo([1, 1], [1, 2]) == [1, 2]
    end
    nothing
end
