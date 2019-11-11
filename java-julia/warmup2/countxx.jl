"""
https://codingbat.com/prob/p194667
Warmup-2 > countXX

Count the number of "xx" in the given string. We'll say that overlapping is allowed, so "xxx" contains 2 "xx".

countXX("abcxx") → 1
countXX("xxx") → 2
countXX("xxxx") → 3
"""

""" with a for loop """
function countxx1(str)
    count = 0
    for i in 1 : length(str) - 1
        if str[i:i+1] == "xx"
            count += 1
        end
    end
    return count
end

""" with recursion (without accumulator) """
function countxx2(str)
    if length(str) < 2
        return 0
    elseif str[1:2] == "xx"
        return 1 + countxx2(str[2:end])
    else
        return countxx2(str[2:end])
    end
end

""" with recursion with accumulator """
function countxx3(str, acc=0)
    if length(str) < 2
        return acc
    elseif str[1:2] == "xx"
        countxx3(str[2:end], acc + 1)
    else
        countxx3(str[2:end], acc)
    end
end

function test()
    @show(countxx1("abcxx"))
    @show(countxx1("xxx"))
    @show(countxx1("xxxx"))
    @show(countxx2("abcxx"))
    @show(countxx2("xxx"))
    @show(countxx2("xxxx"))
    @show(countxx3("abcxx"))
    @show(countxx3("xxx"))
    @show(countxx3("xxxx"))
    nothing
end
