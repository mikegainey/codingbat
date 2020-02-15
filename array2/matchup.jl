"""
https://codingbat.com/prob/p136254
Array-2 > matchUp

Given arrays nums1 and nums2 of the same length,
for every element in nums1, consider the corresponding element in nums2 (at the same index).
Return the count of the number of times that the two elements differ by 2 or less, but are not equal.

matchup([1, 2, 3], [2, 3, 10]) == 2
matchup([1, 2, 3], [2, 3, 5]) == 3
matchup([1, 2, 3], [2, 3, 3]) == 2
"""
function matchup1(ns1, ns2)
    count = 0
    for i in 1 : length(ns1)
        if abs(ns1[i] - ns2[i]) in [1, 2]
            count += 1
        end
    end
    count
end

function matchup2(ns1, ns2)
    if length(ns1) == 0
        return 0
    end
    if abs(ns1[1] - ns2[1]) in [1, 2]
        return 1 + matchup2(ns1[2:end], ns2[2:end])
    else
        return matchup2(ns1[2:end], ns2[2:end])
    end
end

using Test
function test()
    @testset begin
        @test matchup1([1, 2, 3], [2, 3, 10]) == 2
        @test matchup1([1, 2, 3], [2, 3, 5]) == 3
        @test matchup1([1, 2, 3], [2, 3, 3]) == 2
        @test matchup2([1, 2, 3], [2, 3, 10]) == 2
        @test matchup2([1, 2, 3], [2, 3, 5]) == 3
        @test matchup2([1, 2, 3], [2, 3, 3]) == 2
    end
    nothing
end

test()
