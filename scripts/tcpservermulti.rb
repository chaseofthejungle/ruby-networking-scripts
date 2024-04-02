# Creates a TCP server that can handle multiple clients.
require 'socket'

PORT = 8080
socket = TCPServer.new('0.0.0.0', PORT) # listen on port 8080

def handle_connection(client)
  puts "A new Client has been discovered! #{client}"
  client.write("Server says: Hello!")
  client.close
end

puts "Listening for activity on port #{PORT}. (To cancel, press CTRL and C.)"
loop do
  client = socket.accept
  Thread.new { handle_connection(client) }
end
