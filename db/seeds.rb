# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Product.create(name: "Green Bay Packers Share",price: 350, image_url: "https://archive.jsonline.com/Services/image.ashx?domain=www.jsonline.com&file=26516117-m26502396.jpg&resize=", description: "One share of the best team in the NFL: You too can be an NFL owner")
# Product.create(name: "Football", price: 150, image_url: "https://assets.aboutamazon.com/dims4/default/1f1d67a/2147483647/strip/true/crop/3888x2188+0+148/resize/1320x743!/quality/90/?url=https%3A%2F%2Famazon-blogs-brightspot.s3.amazonaws.com%2F31%2F96%2F0ab6f148452e9cf744d9e6a9cf28%2Fistock-92024772-1.jpg", description: "A ball used for football")
# Product.create(name: "Cleats", price: 60, image_url: "https://classic.cdn.media.amplience.net/i/hibbett/X1827_0001_right", description: "A special shoe for gripping turf")
# Product.create(name: "Jersey", price: 100, image_url: "https://cdn.shoplightspeed.com/shops/603842/files/36501843/650x750x2/image.jpg", description: "A Green Throwback Brett Favre #4 Jersey")
# Product.create(name: "Helmet", price: 250, image_url: "https://cdn.shopify.com/s/files/1/2458/4861/products/GreenBayPackersSpeedAuthenticUpgradedDamaged01_1024x.jpg?v=1612813298", description: "Bring Protection")

# Supplier.create(name: "Cheesehead Incorporated", email: "cheesehead@gmail.com", phone_number: "867-5309")
# Supplier.create(name: "Lambeau Leap", email: "leaping@gmail.com", phone_number: "666-3333")
# Supplier.create(name: "Fox River Runs", email: "frruns@gmail.com", phone_number: "111-9999")

Image.create(url: "https://archive.jsonline.com/Services/image.ashx?domain=www.jsonline.com&file=26516117-m26502396.jpg&resize=", product_id: 1)
Image.create(url: "https://assets.aboutamazon.com/dims4/default/1f1d67a/2147483647/strip/true/crop/3888x2188+0+148/resize/1320x743!/quality/90/?url=https%3A%2F%2Famazon-blogs-brightspot.s3.amazonaws.com%2F31%2F96%2F0ab6f148452e9cf744d9e6a9cf28%2Fistock-92024772-1.jpg", product_id: 2)
Image.create(url: "https://classic.cdn.media.amplience.net/i/hibbett/X1827_0001_right", product_id: 3)
Image.create(url: "https://cdn.shoplightspeed.com/shops/603842/files/36501843/650x750x2/image.jpg", product_id: 4)
Image.create(url: "https://cdn.shopify.com/s/files/1/2458/4861/products/GreenBayPackersSpeedAuthenticUpgradedDamaged01_1024x.jpg?v=1612813298", product_id: 5)
Image.create(url: "https://i.pinimg.com/originals/cf/aa/39/cfaa39a0e596aab4f6899ab3f850db8c.jpg", product_id: 8)
Image.create(url: "https://cdn.shopify.com/s/files/1/2485/8468/products/2019_08_05_S_NFLBlazers_MR-23.png?v=1568326624", product_id: 8)
Image.create(url: "https://cdn.shopify.com/s/files/1/0234/5963/products/IMG_9569-Edit_800x.jpg?v=1570103111", product_id: 8)