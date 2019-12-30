"""
https://codingbat.com/prob/p180365
AP-1 > scoreUp

The "key" array is an array containing the correct answers to an exam, like {"a", "a", "b", "b"}.
The "answers" array contains a student's answers, with "?" representing a question left blank.
The two arrays are not empty and are the same length.
Return the score for this array of answers,
giving +4 for each correct answer, -1 for each incorrect answer, and +0 for each blank answer.

scoreup(["a", "a", "b", "b"], ["a", "c", "b", "c"]) == 6
scoreup(["a", "a", "b", "b"], ["a", "a", "b", "c"]) == 11
scoreup(["a", "a", "b", "b"], ["a", "a", "b", "b"]) == 16
"""
function scoreup(key, answers)
    score = 0
    for (k, a) in zip(key, answers)
        if a == k
            score += 4
        elseif a == "?"
            # do nothing if blank
        else
            score -= 1
        end
    end
    score
end

using Test
function test()
    @testset begin
        @test scoreup(["a", "a", "b", "b"], ["a", "c", "b", "c"]) == 6
        @test scoreup(["a", "a", "b", "b"], ["a", "a", "b", "c"]) == 11
        @test scoreup(["a", "a", "b", "b"], ["a", "a", "b", "b"]) == 16
    end
    nothing
end

test()

