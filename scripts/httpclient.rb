# Minimalistic HTTP client script for retrieving API data.

require 'json'
require 'net/http'

url = 'https://api.examplesite.com/data'
uri = URI(url)
response = Net::HTTP.get(uri)

data = JSON.parse(response)
puts data
