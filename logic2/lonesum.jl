"""
https://codingbat.com/prob/p148972
Logic-2 > loneSum

Given 3 int values, a b c, return their sum.
However, if one of the values is the same as another of the values, it does not count towards the sum.

lonesum(1, 2, 3) == 6
lonesum(3, 2, 3) == 2
lonesum(3, 3, 3) == 0
"""
function lonesum1(a, b, c)
    x, y, z = a, b, c
    a == b && (x = 0; y = 0)
    a == c && (x = 0; z = 0)
    b == c && (y = 0; z = 0)
    return x + y + z
end

function lonesum2(nums...)
    freqs = Dict()
    for num in nums
        freqs[num] = get(freqs, num, 0) + 1
    end
    total = 0
    for (num, freq) in freqs
        if freq == 1
            total += num
        end
    end
    return total
end

using Test
function test()
    @testset begin
        @test lonesum1(1, 2, 3) == 6
        @test lonesum1(3, 2, 3) == 2
        @test lonesum1(3, 3, 3) == 0
        @test lonesum1(3, 3, 2) == 2
        @test lonesum1(2, 3, 3) == 2

        @test lonesum2(1, 2, 3) == 6
        @test lonesum2(3, 2, 3) == 2
        @test lonesum2(3, 3, 3) == 0
        @test lonesum2(3, 3, 2) == 2
        @test lonesum2(2, 3, 3) == 2
    end
    nothing
end

