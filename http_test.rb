require 'http'

###INDEX

path = HTTP.get("http://localhost:3000/products")
index = path.parse(:json)
#puts index

###SHOW

path = HTTP.get("http://localhost:3000/products/2")
show = path.parse(:json)
#puts show

###CREATE

# path = HTTP.post("http://localhost:3000/products", form: => {:name => "Cheese Head", :description => "A hat that resembles a block of cheese", :price => 33})
# create = path.parse(:json)
# puts create

