puts 'hello world!'

### The basics ###
# Add two strings together that, when concatenated, return your first and last name as your full name in one string
first = 'Me'
last= 'you'
puts "#{first} #{last}"

# Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the:
# 1) thousands place 2) hundreds place 3) tens place 4) ones place
number = 1234
thousands = number / 1000
hundreds = number % 1000 / 100
tens = number % 1000 % 100 / 10
ones = number % 1000 % 100 % 10 / 1
puts thousands
puts hundreds
puts tens
puts ones

# Write a program that uses a hash to store a list of movie titles with the year they came out.
# Then use the puts command to make your program print out the year of each movie to the screen.
movies = {
  movie1: 1800,
  movie2: 1900,
  movie3:  2000,
  movie4: 2010
}
movies.each do |key, value|
  puts "#{key} year is #{value}"
end

# Use the dates from the previous example and store them in an array.
# Then make your program output the same thing as exercise 3.
movies2 = [
  1800,
  1900,
  2000,
  2010
]
movies2.each { |x| puts x }

# Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
factNumbers = [5, 6, 7, 8]
factorial = 1
factNumbers.each { |x| factorial *= x }
puts "factorial #{factorial}"

# Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.
floats = [3.2, 5.6, 7.8]
floats.each { |x| puts x * x }

# What does the following error message tell you?
# SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
# from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'
# there's a syntax error in main, an opening bracket without a closing bracket
