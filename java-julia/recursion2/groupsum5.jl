"""
https://codingbat.com/prob/p138907
Recursion-2 > groupSum5

Given an array of ints, is it possible to choose a group of some of the ints,
such that the group sums to the given target with these additional constraints:
all multiples of 5 in the array must be included in the group.
If the value immediately following a multiple of 5 is 1, it must not be chosen. (No loops needed.)

groupsum5([2, 5, 10, 4], 19) == true
groupsum5([2, 5, 10, 4], 17) == true
groupsum5([2, 5, 10, 4], 12) == false
"""
function groupsum5(loi, target, start=1)
    if length(loi[start:end]) == 1
        if loi[start] % 5 == 0
            return loi[start] == target
        else
            return loi[start] == target || loi[start] == 0
        end
    end

    if loi[start] % 5 == 0 && loi[start+1] == 1
        return groupsum(loi, target - 5, start + 2)


