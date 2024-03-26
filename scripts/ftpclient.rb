# Minimalistic script for establishing a client connection to an FTP server.

require 'net/ftp'

ftp = Net::FTP.new('ftp.examplesite.com')
ftp.login('username', 'password')
ftp.chdir('/path/to/directory')
files = ftp.list('*')
puts files
ftp.close
