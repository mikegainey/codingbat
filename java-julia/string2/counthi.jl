"""
https://codingbat.com/prob/p147448
String-2 > countHi

Return the number of times that the string "hi" appears anywhere in the given string.

counthi("abc hi ho") == 1
counthi("ABChi hi") == 2
counthi("hihi") == 2
"""
function counthi1(s)
    count = 0
    for i in 1 : length(s) - 1
        if s[i:i+1] == "hi"
            count += 1
        end
    end
    count
end

function counthi2(s, count=0)
    if length(s) < 2
        return count
    elseif s[1:2] == "hi"
        counthi2(s[3:end], count+1)
    else
        counthi2(s[2:end], count)
    end
end

function counthi3(s)
    if length(s) < 2
        return 0
    elseif s[1:2] == "hi"
        return 1 + counthi3(s[3:end])
    else
        return 0 + counthi3(s[2:end])
    end
end


using Test
function test()
    @testset begin
        @test @show counthi1("abc hi ho") == 1
        @test @show counthi1("ABChi hi") == 2
        @test @show counthi1("hihi") == 2
        @test @show counthi2("abc hi ho") == 1
        @test @show counthi2("ABChi hi") == 2
        @test @show counthi2("hihi") == 2
        @test @show counthi3("abc hi ho") == 1
        @test @show counthi3("ABChi hi") == 2
        @test @show counthi3("hihi") == 2
    end
    nothing
end

