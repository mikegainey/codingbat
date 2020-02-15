"""
https://codingbat.com/prob/p153748
Logic-1 > shareDigit

Given two ints, each in the range 10..99, return true if there is a digit that appears in both numbers,
such as the 2 in 12 and 23. (Note: division, e.g. n/10, gives the left digit while the % "mod" n%10 gives the right digit.)

shareDigit(12, 23) → true
shareDigit(12, 43) → false
shareDigit(12, 44) → false
"""
function sharedigit(a, b)
    for x in divrem(a, 10)
        for y in divrem(b, 10)
            if x == y
                return true
            end
        end
    end
    return false
end

using Test
function test()
    @testset begin
        @test sharedigit(12, 23) == true
        @test sharedigit(12, 43) == false
        @test sharedigit(12, 44) == false
    end
    nothing
end
