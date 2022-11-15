# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# output hash = { letter_quantity_in_word => number_of_words_with_this_letter_quantity }
# E
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# D/A
# use String#split to turn into an array
# then iterate over the array
# each element in array -- size of el is analyzed with String#size

def word_sizes(str)
  out = {}
  arr = str.split
  arr.each { |sub| out[sub.size] = arr.count(sub.size) }
  out
end

p word_sizes("Four score and seven.")
p word_sizes("Hey diddle diddle, the cat and the fiddle!")
