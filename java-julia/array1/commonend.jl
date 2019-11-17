"""
https://codingbat.com/prob/p191991
Array-1 > commonEnd

Given 2 arrays of ints, a and b, return true if they have the same first element or they have the same last element.
Both arrays will be length 1 or more.

commonEnd([1, 2, 3], [7, 3]) → true
commonEnd([1, 2, 3], [7, 3, 2]) → false
commonEnd([1, 2, 3], [1, 3]) → true
"""
function commonend(a, b)
    return a[1] == b[1] || a[end] == b[end]
end

using Test
function test()
    @testset begin
        @test commonend([1, 2, 3], [7, 3]) == true
        @test commonend([1, 2, 3], [7, 3, 2]) == false
        @test commonend([1, 2, 3], [1, 3]) == true
    end
    nothing
end
