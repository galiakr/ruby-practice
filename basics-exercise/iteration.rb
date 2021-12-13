puts 'hello iteration!'

# What does the each method in the following program return after it is finished executing?
# => [1, 2, 3, 4, 5]
x = [1, 2, 3, 4, 5]
x.each do |a|
  puts a + 1
end

# Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP".
# Each loop can get info from the user.
input = ""
while x != "stop" do
  puts "enter your input"
  input = gets.chomp
end

# Write a method that counts down to zero using recursion
def count_down(start)
  puts "*** #{start} ***"
  if start > 0
    count_down(start -1)
  end
end
puts count_down(5)