mode ='r+'

file = File.open('friends_list.txt', mode)
puts file.inspect
puts file.read

file.close

# optional block - will auto-close the file opened once you're done with it
what_am_i=File.open('clean_state.txt', 'w') do |file|
  file.puts 'Call me Ishmael'
end

p what_am_i #will be nil because what_am_i scope is limited to do end block

File.open('clean_state.txt', 'r') do |file|
  puts file.read
end

#reading and writing
file = File.open('master', 'r+')
p file.read(16)

file.seek(5)
buffer = ''
p file.read(23, buffer)
p buffer

file.close

lines = File.readlines('monk')
p lines
p lines[0]

File.open("disguise", "w") do |f|
  f.write("Bar")
end

File.open("disguise", "r") do |f|
  puts f.read
end