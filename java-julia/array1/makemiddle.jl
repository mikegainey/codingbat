"""
https://codingbat.com/prob/p199519
Array-1 > makeMiddle

Given an array of ints of even length,
return a new array length 2 containing the middle two elements from the original array.
The original array will be length 2 or more.

makeMiddle([1, 2, 3, 4]) → [2, 3]
makeMiddle([7, 1, 2, 3, 4, 9]) → [2, 3]
makeMiddle([1, 2]) → [1, 2]
"""
function makemiddle(A)
    i = length(A) ÷ 2
    return [A[i], A[i+1]]
end

using Test
function test()
    @testset begin
        @test makemiddle([1, 2, 3, 4]) == [2, 3]
        @test makemiddle([7, 1, 2, 3, 4, 9]) == [2, 3]
        @test makemiddle([1, 2]) == [1, 2]
    end
    nothing
end


