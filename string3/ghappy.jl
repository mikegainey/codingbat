"""
String-3 > gHappy
https://codingbat.com/prob/p198664

We'll say that a lowercase 'g' in a string is "happy" if there is another 'g' immediately to its left or right.
Return true if all the g's in the given string are happy.

ghappy("xxggxx") → true
ghappy("xxgxx") → false
ghappy("xxggyygxx") → false
"""
function ghappy(s)
    previous = nothing
    count = 0
    for c in s
        if c == 'g'
            if previous != 'g'
                count = 1
            else
                count += 1
            end
        else # (c != 'g')
            if previous == 'g'
                if count == 1 # a lone 'g'
                    return false
                else
                    count = 0
                end
            end
        end
        previous = c
    end
    true
end

using Test
function test()
    @testset begin
        @test ghappy("xxggxx") == true
        @test ghappy("xxgxx") == false
        @test ghappy("xxggyygxx") == false
    end
    nothing
end
