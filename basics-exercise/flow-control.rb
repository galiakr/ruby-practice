puts 'hello flow-control!'

# Write down whether the following expressions return true or false.
# Then type the expressions into irb to see the results.
# (32 * 4) >= 129 => false
# false != !true => false
# true == 4 => false
# false == (847 == '874') => true
# (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false = > true


# Write a method that takes a string as an argument.
# The method should return a new, all-caps version of the string, only if the string is longer than 10 characters.
# Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful.
# Check the Ruby Docs!)
#
def to_uppercase(str)
  if str.length > 10
    return str.upcase
  end
   str
end

puts to_uppercase('abcdefghtijasdfksjdf')
puts to_uppercase('fksjdf')

# Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50,
# 51 and 100, or above 100.
def where_is_the_number()
  puts "Enter a number:"
  number = gets.to_i
  if number >= 0 && number <= 50
    puts "number #{number} is between 0-50"
  elsif number > 50 && number <= 100
    puts "number #{number} is between 50-100"
  else
    puts "number #{number} larger than 100"
  end
end
# where_is_the_number()

# What will each block of code below print to the screen?
# Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.
# Snippet 1 => FALSE
'4' == 4 ? puts("TRUE") : puts("FALSE")

# Snippet 2 =>  "Did you get it right?"
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end

# Snippet 3 => Alright now!"
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end

# When you run the following code...
# def equal_to_four(x)
#   if x == 4
#     puts "yup"
#   else
#     puts "nope"
# end
#
# equal_to_four(5)
# You get the following error message..
# exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end
# Why do you get this error and how can you fix it? => missing method definition end
def equal_to_four(x)
    if x == 4
      puts "yup"
    else
      puts "nope"
  end
end
  equal_to_four(5)

# Write down whether the following expressions return true or false or raise an error.
# Then, type the expressions into irb to see the results.
# puts (32 * 4) >= "129" # error: comparison of Integer with String failed
puts 847 == '874' # false
puts '847' < '846' # false
puts '847' > '846' # true
puts '847' > '8478' # false
puts '847' < '8478' # true