"""
https://codingbat.com/prob/p147483
String-1 > makeTags

The web is built with HTML strings like "<i>Yay</i>" which draws Yay as italic text. In this example,
the "i" tag makes <i> and </i> which surround the word "Yay". Given tag and word strings,
create the HTML string with tags around the word, e.g. "<i>Yay</i>".

makeTags("i", "Yay") → "<i>Yay</i>"
makeTags("i", "Hello") → "<i>Hello</i>"
makeTags("cite", "Yay") → "<cite>Yay</cite>"
"""
function maketags(tag, str)
    opening = "<$(tag)>"
    closing = "</$(tag)>"
    return opening * str * closing
end

function test()
    @show(maketags("i", "Yay"))
    @show(maketags("i", "Hello"))
    @show(maketags("cite", "Yay"))
    nothing
end
