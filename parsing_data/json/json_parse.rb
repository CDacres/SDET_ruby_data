require 'json'

json = JSON.parse(File.read('json_example.json'))

puts json['colors'][0].keys
