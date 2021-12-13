puts 'hello methods!'

### The methods ###
# Write a program that prints a greeting message.
# This program should contain a method called greeting that takes a name as its parameter and returns a string.
def greeting(name)
  "Hi #{name}, nice to see you"
end

puts greeting("Jul")

# What do the following expressions evaluate to?
# x = 2 => x is 2
# puts x = 2 => prints 2
# p name = "Joe" => prints name is joe
# four = "four"  => four has the string four
# print something = "nothing" => prints something which has nothing


# Write a program that includes a method called multiply that takes two arguments
# and returns the product of the two numbers.
def multiply(x, y)
  return x * y
end
puts multiply(0, 7)

# What will the following code print to the screen?
# def scream(words)
#   words = words + "!!!!"
#   return
#   puts words
# end
#
# scream("Yippeee") => noting. it returns before thr puts

# Edit the method definition in exercise #4 so that it does print words on the screen. 2) What does it return now?
# Yippeee!!!!
def scream(words)
  words = words + "!!!!"
  puts words
  return
end

scream("Yippeee")

# What does the following error message tell you?
# ArgumentError: wrong number of arguments (1 for 2)
#   from (irb):1:in `calculate_product'
#   from (irb):4
#   from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
#
# the method calculate_product expects 2 arguments but received only one.