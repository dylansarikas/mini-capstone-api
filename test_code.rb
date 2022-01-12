require 'http'
require 'tty-table'

path = HTTP.get("http://localhost:3000/store_front")

products = path.parse(:json)

#pp products

#table = TTY::Table.new([["Product Name", "Name", "Price", "Description"], [["a1", "a2"], ["b1", "b2"]])

table = TTY::Table.new(["Name","Price", "Description", "URL"], [["Green Bay Packers Share", "a2"], ["Helmet", "b2"]])

#table = TTY::Table.new(["Name","Price", "Description", "URL"]. [[],[]])

#puts table.render(:ascii)

product_names = []
price_amounts = []
description_tags = []
url_locations = []
products.each do |product|
  product_names << product["name"]
  price_amounts << product["price"]
  description_tags << product["description"]
  url_locations << product["image_url"]
end

# p price_amounts
# p description_tags
# p url_locations

table2 = TTY::Table.new
table2 << product_names
table2 << price_amounts
table2 << description_tags
#table2 << url_locations

puts table2.render(:ascii)

#p product_names

#table << product_names