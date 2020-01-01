"""
https://codingbat.com/prob/p191212
AP-1 > hasOne

Given a positive int n, return true if it contains a 1 digit.
Note: use % to get the rightmost digit, and / to discard the rightmost digit.

hasone(10) == true
hasone(22) == false
hasone(220) == false
"""
function hasone1(n)
    while n > 0
        (n, ones) = divrem(n, 10)
        if ones == 1
            return true
        end
    end
    return false
end

function hasone2(n)
    if n == 0
        return false
    else
        (n, ones) = divrem(n, 10)
        if ones == 1
            return true
        else
            hasone2(n)
        end
    end
end

function hasone3(n)
    if n == 0
        return false
    else
        n % 10 == 1 || hasone3(n ÷ 10)
    end
end


using Test
function test()
    @testset begin
        @test hasone1(10) == true
        @test hasone1(22) == false
        @test hasone1(220) == false
        @test hasone2(10) == true
        @test hasone2(22) == false
        @test hasone2(220) == false
        @test hasone3(10) == true
        @test hasone3(22) == false
        @test hasone3(220) == false
    end
    nothing
end

test()

