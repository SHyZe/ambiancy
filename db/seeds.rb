# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'stefano@dev.fr', password: '123456', password_confirmation: '123456') if Rails.env.development?

puts "Suppréssion de tout les Posts."
Post.destroy_all
puts "Création des Posts."
100.times do
  Post.create!([{
    title: Faker::DcComics.title,
    content: "#{Faker::Lorem.paragraphs(4)}.",
    user_id: user_id = 1,
    category_post_id: category_post_id = 1,
    image_file_name: Faker::LoremFlickr.pixelated_image("640x480")
  }])
end
puts "Création de #{Post.count} Posts."

puts "Suppréssion de tout les Produits."
Product.destroy_all
puts "Création des Produits."
100.times do
  Product.create!([{
    name: Faker::Commerce.product_name,
    description: "#{Faker::Lorem.paragraphs(4)}.",
    price: Faker::Commerce.price,
    stock_quantity: Faker::Number.number(3),
    user_id: user_id = 1,
    category_product_id: category_product_id = 1,
    picture_file_name: Faker::LoremFlickr.pixelated_image("640x480")
  }])
end
puts "Création de #{Product.count} Produits."