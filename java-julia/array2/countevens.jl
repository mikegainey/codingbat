"""
https://codingbat.com/prob/p162010
Array-2 > countEvens

Return the number of even ints in the given array.
Note: the % "mod" operator computes the remainder, e.g. 5 % 2 is 1.

countevens([2, 1, 2, 3, 4]) == 3
countevens([2, 2, 0]) == 3
countevens([1, 3, 5]) == 0
"""
function countevens(nums)
    count = 0
    for n in nums
        if n % 2 == 0
            count += 1
        end
    end
    count
end

using Test
function test()
    @testset begin
        @test countevens([2, 1, 2, 3, 4]) == 3
        @test countevens([2, 2, 0]) == 3
        @test countevens([1, 3, 5]) == 0
    end
    nothing
end

test()
