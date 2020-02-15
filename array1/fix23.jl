"""
https://codingbat.com/prob/p120347
Array-1 > fix23

Given an int array length 3, if there is a 2 in the array immediately followed by a 3, set the 3 element to 0.
Return the changed array.

fix23([1, 2, 3]) → [1, 2, 0]
fix23([2, 3, 5]) → [2, 0, 5]
fix23([1, 2, 1]) → [1, 2, 1]
"""
function fix23!(A)
    for i in 1:2
        if A[i:i+1] == [2, 3]
            A[i+1] = 0
        end
    end
    return A
end

using Test
function test()
    @testset begin
        @test fix23!([1, 2, 3]) == [1, 2, 0]
        @test fix23!([2, 3, 5]) == [2, 0, 5]
        @test fix23!([1, 2, 1]) == [1, 2, 1]
    end
    nothing
end

