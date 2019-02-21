# http_server.rb
require 'socket'
require 'json'
server = TCPServer.new 1234

while session = server.accept
  request = session.gets
  puts request

  session.print "HTTP/1.1 200\r\n"
  session.print "Content-Type: application/json\r\n"
  session.print "\r\n"
  response = {:msg => "Hello there!", :time => "#{Time.now}" }
  session.print response.to_json;
  session.close
end
