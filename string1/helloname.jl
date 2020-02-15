"""
https://codingbat.com/prob/p171896
String-1 > helloName

Given a string name, e.g. "Bob", return a greeting of the form "Hello Bob!".

helloName("Bob") → "Hello Bob!"
helloName("Alice") → "Hello Alice!"
helloName("X") → "Hello X!"
"""
function helloname(name)
    return "Hello $(name)!"
end

function test()
    @show(helloname("Bob"))
    @show(helloname("Alice"))
    @show(helloname("X"))
    nothing
end

