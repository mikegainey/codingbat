"""
https://codingbat.com/prob/p134250
String-2 > xyBalance

We'll say that a String is xy-balanced if for all the 'x' chars in the string,
there exists a 'y' char somewhere later in the string. So "xxy" is balanced, but "xyx" is not.
One 'y' can balance multiple 'x's. Return true if the given string is xy-balanced.

xybalance("aaxbby") == true
xybalance("aaxbb") == false
xybalance("yaaxbb") == false
"""
function xybalance(str)
