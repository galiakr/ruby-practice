puts 'hello variables!'

### The variables ###
# Write a program called name.rb that asks the user to type in their name and then prints out a greeting message
# with their name included.
name = gets
puts "Hello #{name}"

# Write a program called age.rb that asks a user how old they are and then tells them how old they will be
# in 10, 20, 30 and 40 years.
age = gets
ageing = [10, 20, 30, 40]
ageing.each { |x| puts "You'll be #{age.to_i + x} in #{x} years" }

# Add another section onto name.rb that prints the name of the user 10 times.
# You must do this without explicitly writing the puts method 10 times in a row.
10.times { puts name }

# Modify name.rb again so that it first asks the user for their first name,
# saves it into a variable, and then does the same for the last name.
# Then outputs their full name all at once.
puts "What's your first name?"
firstName = gets.chomp
puts "What's your first name?"
lastname = gets.chomp
puts "Hi #{firstName} #{lastname}"

# What does x print
# 3
x = 0
3.times do
  x += 1
end
puts x

# What does z print
# undefined local variable or method `z' for main:Object (NameError)
# y = 0
# 3.times do
#   y += 1
#   z = y
# end
# puts z