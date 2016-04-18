cat_arr = ["Books", "Clothing", "Electronics", "Home & Garden", "Office", "Furniture", "Sporting", "Video Games", "Wine"]

cat_arr.each do |cat|
  Category.create({
    name: cat
    })
end

30.times do
  Product.create({
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    description: Faker::Lorem.sentence,
    image: Faker::Avatar.image,
    quantity: rand(50),
    })
end

Product.all.each do |product|
  rand(3).times { product.categories << Category.all.sample }
end

User.create({
  # username: "tim",
  email: "tim@tim.com",
  password: "timtim"
  # role: "admin"
  })

User.create({
  # username: "tom",
  email: "tom@tom.com",
  password: "tomtom"
  # role: "user"
  })

100.times do
  OrderItem.create({
    order_id: rand(1..50),
    product_id: rand(1..30),
    quantity: rand(6)
    })
end

