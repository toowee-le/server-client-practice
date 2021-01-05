require 'socket'

def run_server
  server = TCPServer.new(2345)

  loop do
    socket = server.accept
  
    get_response(socket)
  end

  socket.close
end

def get_response(socket)
  loop do
    socket.puts "What do you say?"
    they_said = socket.gets.chomp

    if they_said != "quit"
      socket.puts "You said: #{they_said}."
    else
      socket.puts "You said: #{they_said}. Goodbye!"
      break
    end
  end
  false
end

run_server