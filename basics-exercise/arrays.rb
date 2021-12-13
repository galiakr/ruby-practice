puts 'hello arrays!'

# Below we have an array and a number. arr = [1, 3, 5, 7, 9, 11] ; number = 3
# Write a program that checks to see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]
puts arr.include?(3)

# What will the following programs return? What is the value of arr after each?
# 1
# arr = ["b", "a"]
# pp arr = arr.product(Array(1..3)) # [[b, 1], [b, 2], [b, 3], [a,1 ], [a, 2], [a, 3]]
# pp arr.first.delete(arr.first.last) # [[b], [b, 2], [b, 3], [a,1 ], [a, 2], [a, 3]]

# 2
# arr = ["b", "a"]
# pp arr = arr.product([Array(1..3)]) # [[b, [1, 2 ,3]], [a, [1, 2 ,3]]]
# pp arr = arr.first.delete(arr.first.last) # [b], [a, [1, 2 ,3]]]

# How do you return the word "example" from the following array?
# arr = [["test", "hello", "world"],["example", "mem"]]
# pp arr = arr.last.delete(arr.last.first)

# What does each method return in the following example?
arr = [15, 7, 18, 5, 12, 8, 5, 1]
puts arr.index(5) # 3
# puts arr.index[5] # undefined
puts arr[5] # 8

# What is the value of a, b, and c in the following program?
string = "Welcome to America!"
puts string.length
puts a = string[6] # e
puts b = string[11] # A
puts c = string[19] # nothing, reached the end of the string

# You run the following code...
# names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'
# ..and get the following error message:
# TypeError: no implicit conversion of String into Integer
#   from (irb):2:in `[]='
#   from (irb):2
#   from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
# What is the problem and how can it be fixed?
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'

# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.
stuff = ['q', 'e', 'r', 't', 'y']
stuff.each_with_index { |e, i| puts "#{e}, #{i}" }

# Write a program that iterates over an array and builds a new array that is the result of incrementing each value
# in the original array by a value of 2.
# You should have two arrays at the end of this program,
# The original array and the new array you've created.
# Print both arrays to the screen using the p method instead of puts.
original = [1, 2, 3, 4]
new = original.map { |x| x + 2 }
p original
p new

