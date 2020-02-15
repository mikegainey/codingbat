"""
https://codingbat.com/prob/p129952
String-2 > getSandwich

A sandwich is two pieces of bread with something in between.
Return the string that is between the first and last appearance of "bread" in the given string,
or return the empty string "" if there are not two pieces of bread.

getsandwich("breadjambread") == "jam"
getsandwich("xxbreadjambreadyy") == "jam"
getsandwich("xxbreadyy") == ""
"""
function getsandwich1(str)
    if length(str) < 5
        return ""
    end

    breads = [] # indicies of occurances of "bread"
    for i in 1 : length(str) - 4
        if str[i:i+4] == "bread"
            push!(breads, i)
        end
    end

    if length(breads) < 2
        return ""
    end

    x1 = breads[1] + 5
    x2 = breads[2] - 1
    return str[x1:x2]
end

function getsandwich2(str)
    b1 = findfirst("bread", str)
    if b1 == nothing
        return ""
    end
    b2 = findnext("bread", str, b1[2] + 1)
    if b2 == nothing
        return ""
    end
    x1 = b1[end] + 1
    x2 = b2[1] - 1
    return str[x1:x2]
end


using Test
function test()
    @testset begin
        @test getsandwich1("breadjambread") == "jam"
        @test getsandwich1("xxbreadjambreadyy") == "jam"
        @test getsandwich1("xxbreadyy") == ""
        @test getsandwich2("breadjambread") == "jam"
        @test getsandwich2("xxbreadjambreadyy") == "jam"
        @test getsandwich2("xxbreadyy") == ""
    end
    nothing
end

test()
