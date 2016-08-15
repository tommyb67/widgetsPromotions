# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



15.times do

    Product.create ({ department: Faker::Commerce.department(1), product_name: Faker::Commerce.product_name, sku: Faker::Code.ean, model: Faker::Code.asin, price: Faker::Commerce.price, category: Faker::Commerce.department(3)})

  end