"""
https://codingbat.com/prob/p168357
Array-2 > has77

Given an array of ints, return true if the array contains two 7's next to each other,
or there are two 7's separated by one element, such as with {7, 1, 7}.

has77([1, 7, 7]) == true
has77([1, 7, 1, 7]) == true
has77([1, 7, 1, 1, 7]) == false
"""
function has77a(ns)
    seen7 = false
    inbetween = 0
    for n in ns
        if n == 7
            if seen7
                return inbetween ≤ 1
            else
                seen7 = true
            end
        else
            if seen7
                inbetween += 1
            end
        end
    end
    println("I didn't see two 7s.")
end

function has77b(ns, seen7=false, inbetween=0)
    if length(ns) == 0
        return "I didn't see two 7s."
    end

    head = ns[1]
    tail = ns[2:end]

    if head == 7
        if seen7
            return inbetween ≤ 1
        else
            seen7 = true # mutation!
        end
    else
        if seen7
            inbetween += 1 # mutation!
        end
    end
    has77b(tail, seen7, inbetween)
end

function has77c(ns, seen7=false, inbetween=0)
    if length(ns) == 0
        return "I didn't see two 7s."
    end

    head = ns[1]
    tail = ns[2:end]

    if head == 7
        if seen7
            return inbetween ≤ 1
        else
            has77c(tail, true, inbetween)
        end
    else
        if seen7
            has77c(tail, seen7, inbetween+1)
        else
            has77c(tail, seen7, inbetween)
        end
    end
end

using Test
function test()
    @testset begin
        @test has77a([1, 7, 7]) == true
        @test has77a([1, 7, 1, 7]) == true
        @test has77a([1, 7, 1, 1, 7]) == false
        @test has77b([1, 7, 7]) == true
        @test has77b([1, 7, 1, 7]) == true
        @test has77b([1, 7, 1, 1, 7]) == false
        @test has77c([1, 7, 7]) == true
        @test has77c([1, 7, 1, 7]) == true
        @test has77c([1, 7, 1, 1, 7]) == false
   end
    nothing
end

test()


