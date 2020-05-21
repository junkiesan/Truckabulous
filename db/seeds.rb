# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Destroy Bookings"
Booking.destroy_all
puts "Destroy Trucks"
Truck.destroy_all
puts "Destroy Users"
User.destroy_all



User.create!(email: 'romain@yolo.fr', password: 'romain' )

puts 'Creating user...'
10.times do
  users = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    )
  users.save!
  puts 'New user!'
end


Truck.create!(name: 'Tacos Tuesday', category: 'Food', price: 150, description: 'The best Mexican tacos in town! Vegeterian options also available', user:User.first)
Truck.create!(name: 'Sushi & Sashimi', category: 'Food', price: 200, description: 'Fresh fish for your sushi party!', user:User.first)

Truck.create!(name: 'Yoga Flow', category: 'Yoga', price: 190, description: 'Enjoy this unique Yoga class for a relaxed & zen attitude', user:User.first)
Truck.create!(name: 'Dynamic Yoga', category: 'Yoga', price: 150, description: 'A mix of traditional Yoga with a dynamic twist!', user:User.first)

Truck.create!(name: 'Spicy Cocktails', category: 'Cocktails', price: 120, description: 'Spice up your event with our amazing & delicious cocktails!', user:User.first)
Truck.create!(name: 'Drink n Code', category: 'Cocktails', price: 100, description: 'Throwing a code AND drink party? This truck is for you!', user:User.first)

Truck.create!(name: 'Puppy love', category: 'Pups & Kitties', price: 110, description: 'The truck for animal lovers! Half of total price goes to an animal shelter association!', user:User.first)
Truck.create!(name: 'Mystic & Mysteries', category: 'Fortune Teller', price: 135, description: 'Want to know what the future holds for you? From Astrology reading to Tarot cards, this will be a mystical experience!', user:User.first)
Truck.create!(name: 'Magic', category: 'Kids', price: 90, description: 'Magician, rabbits and all kinds of tricks for the best Kids party ever!', user:User.first)


# puts 'Creating truck...'
# 10.times do
#   trucks = Truck.new(
#     name: Faker::Company.name,
#     category: ['Yoga', 'Cocktails', 'Kids', 'Food', 'Pups & Kitties', 'Fortune Teller'].sample,
#     price: rand(50..1000),
#     user: User.first,
#     description: Faker::Company.catch_phrase
#   )
#   trucks.save!
# puts 'New truck!'
# end
# puts 'Trucks created you have the best db ever bae!'


# User.create!(email: 'romain@yolo.fr', password: 'romain' )
# Truck.create!(name: 'Yoga Teacher', category: 'Yoga', price: 100, user:User.first)
# Truck.create!(name: 'Drink n Code', category: 'Cocktails', price: 100, user:User.first)
