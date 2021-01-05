require 'socket'

socket = TCPSocket.new('localhost', 2345)

puts socket.gets # Read lines from socket
puts "Wow what a rude server... I'm going to say Sarah"
socket.puts "Sarah"
puts socket.gets

socket.close