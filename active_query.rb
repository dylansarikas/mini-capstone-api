product = Product.all
p product

product = Product.where("price > ?", 100)

product = Product.order(price: :desc)

Product.count

product = Product.where("name iLIKE 'c%'")

Product.order(id: :desc).limit(3)

Product.average("price")

Product.where("description iLIKE '%snaz%'") 