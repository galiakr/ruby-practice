puts 'hello movies exercise'

def read_file(file_name)
  require 'json'
  file = File.read(file_name)
  data_hash = JSON.parse(file, symbolize_names: true)
  return data_hash
end

puts 'Start'

data = read_file("movies-exercise/movies.json")
results = data[:results]
sorted = results.sort_by! { |k| k[:vote_average] }.reverse!

new_sorted = {}
sorted.each do |movie|
  new_sorted[movie[:title]] = movie[:vote_average]
end

new_sorted['SpiderMan: No Way Home'] =  new_sorted.delete('Spider-Man: No Way Home') if  new_sorted.key?('Spider-Man: No Way Home')
new_sorted['Some Guy'] = new_sorted.delete('"Free Guy') if new_sorted.key?('"Free Guy')

pp new_sorted
puts "Movies count: #{new_sorted.size}"
puts "list of bad movies:"
pp new_sorted.select {|key, value| value < 6.9}

puts 'End'