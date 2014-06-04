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

File.open('clean_state.txt', 'r') { |file| puts file.read }
