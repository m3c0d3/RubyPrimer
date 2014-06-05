p STDOUT.class
p STDOUT.fileno

p STDIN.class
p STDIN.fileno

p STDERR.class
p STDERR.fileno

# open the file "friends_list.txt" and create a file descriptor:
fd = IO.sysopen('friends_list.txt', 'w')

# create a new I/O stream using the file descriptor for "friends_list.txt":
p IO.new(fd)

io_streams = Array.new

ObjectSpace.each_object(IO) { |x| io_streams << x }

p io_streams.length

p $stdin.object_id
p STDIN.object_id

puts

p $stdout.object_id
p STDOUT.object_id

puts

p $stderr.object_id
p STDERR.object_id

# capturing the error default handler
capture = StringIO.new
$stderr = capture

$stderr.warn ('test')
