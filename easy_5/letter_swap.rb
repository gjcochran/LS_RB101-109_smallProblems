# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

# E
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# D/A
#irb(main):001:0> string = 'Oh what a wonderful day it is'
# => "Oh what a wonderful day it is"
# irb(main):002:0> array = string.split
# => ["Oh", "what", "a", "wonderful", "day", "it", "is"]
# irb(main):003:0> char_array = array.map { |el| el.split(//) }
# => [["O", "h"], ["w", "h", "a", "t"], ["a"], ["w", "o", "n", "d", "e", "r",...
# irb(main):004:0> char_array
# => [["O", "h"], ["w", "h", "a", "t"], ["a"], ["w", "o", "n", "d", "e", "r", "f", "u", "l"], ["d", "a", "y"], ["i", "t"], ["i", "s"]]
