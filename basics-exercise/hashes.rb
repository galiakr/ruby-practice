puts 'hello arrays!'

# Given a hash of family members, with keys as the title and an array of names as the values,
# use Ruby's built-in select method to gather only immediate family members' names into a new array.
family = {
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

pp immediate = family.select {|key, value| key == :sisters || key == :brothers}.values.flatten

# Look at Ruby's merge method.
# Notice that it has two versions.
# What is the difference between merge and merge!?
# Write a program that uses both and illustrate the differences
# The difference is merge! modifies permanently, while merge does not.
h1 = {
  "a": 100,
   "b": 200
}
h2 = {
  "b": 254,
  "c": 300
}
puts "h1.merge(h2) => #{h1.merge(h2)}"
puts "h1 => #{h1}"
puts "h2 => #{h2}"
puts "h1.merge!(h2) => #{h1.merge!(h2)}"
puts "h1 => #{h1}"
puts "h2 => #{h2}"

# Using some of Ruby's built-in Hash methods:
# 1) write a program that loops through a hash and prints all of the keys.
# 2) write a program that does the same thing except printing the values.
# 3) write a program that prints both.

# family = {
#   uncles: ["bob", "joe", "steve"],
#   sisters: ["jane", "jill", "beth"],
#   brothers: ["frank","rob","david"],
#   aunts: ["mary","sally","susan"]
# }

pp family.keys   # [:uncles, :sisters, :brothers, :aunts]
pp family.values # [["bob", "joe", "steve"], ["jane", "jill", "beth"],["frank", "rob", "david"], ["mary", "sally", "susan"]]
pp family

# Given the following expression, how would you access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person[:name]

# What method could you use to find out if a Hash contains a specific value in it?
# Write a program that verifies that the value is within the hash.
puts person.has_value?('mom')

# Given the following code... What's the difference between the two hashes that were created?
x = "hi there" # x has the string 'hi there'
my_hash = {x: "some value"} # {x is key: "some value" is valu}
my_hash2 = {x => "some value"} # {'hi there' is key => "some value" is value}
puts my_hash
puts my_hash2

# If you see this error, what do you suspect is the most likely problem?
# NoMethodError: undefined method `keys' for Array: B
# A. We're missing keys in an array variable.
# B. There is no method called keys for Array objects.
# C. keys is an Array object, but it hasn't been defined yet.
# D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.