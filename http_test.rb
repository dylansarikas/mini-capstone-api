require 'http'

###INDEX

path = HTTP.get("http://localhost:3000/products")
index = path.parse(:json)
puts index

###SHOW

# path = HTTP.get("GET http://localhost:3000/products/2")
# show = path.parse(:json)
# puts show