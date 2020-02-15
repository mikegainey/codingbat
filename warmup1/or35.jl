"""
https://codingbat.com/prob/p112564
Warmup-1 > or35

Return true if the given non-negative number is a multiple of 3 or a multiple of 5.
Use the % "mod" operator -- see Introduction to Mod

or35(3) → true
or35(10) → true
or35(8) → false
"""
function or35(n)
    return n % 3 == 0 || n % 5 == 0
end

function test()
    for n in 1:20
        println("or35($n) = ", or35(n))
    end
end

