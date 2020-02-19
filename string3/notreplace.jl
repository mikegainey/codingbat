"""
String-3 > notReplace
https://codingbat.com/prob/p154137

Given a string, return a string where every appearance of the lowercase word "is" has been replaced with "is not".
The word "is" should not be immediately preceeded or followed by a letter
-- so for example the "is" in "this" does not count.

notreplace("is test") == "is not test"
notreplace("is-is") == "is not-is not"
notreplace("This is right") == "This is not right"
"""
# function notreplace(s)
#     len = length(s)
#     index = 1
#     while index < len-1
#         if s[index:index+1] == "is"
#             # check preceeding character
#             if index == 1
#                 preceeding = false
#             else
#                 preceeding = isletter(s[index-1])
#             end
#             # check following character
#             if index+1 == len
#                 following = false
#             else
#                 following = isletter(s[index+2])
#             end

#             if !preceeding && !following
#                 push!(output, "is not")
#                 index += 2
#             else

function notreplace(s, index=1, output="")
    if index > length(s)-1
        string(output, s[index:end])
    else
        if s[index:index+1] == "is"

