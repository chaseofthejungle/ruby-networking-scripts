require 'socket'
 
webserver = 'www.exampleserver.com'
port = 80
path = "/index.html"

request = "GET #{path} HTTP/1.0\r\n\r\n"

socket = TCPSocket.open(webserver, port) # Forms connection to web server.
socket.print(request)
response = socket.read

headers, body = response.split("\r\n\r\n", 2) 
print body
