require 'http'
require 'tty-table'

path = HTTP.get("http://localhost:3000/store_front")

products = path.parse(:json)

#pp products

#table = TTY::Table.new([["Product Name", "Name", "Price", "Description"], [["a1", "a2"], ["b1", "b2"]])

table = TTY::Table.new(["Name","Price", "Description", "URL"], [["Green Bay Packers Share", "a2"], ["Helmet", "b2"]])

#table = TTY::Table.new(["Name","Price", "Description", "URL"]. [[],[]])

puts table.render(:ascii)

product_names = []
products.each do |product|
  product_names << product["name"]
end

p product_names
#table << product_names