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
puts 'Users created Trucks are next babe!'

puts 'Creating truck...'
10.times do
  trucks = Truck.new(
    name: Faker::Company.name,
    category: ['Yoga', 'Cocktails', 'Kids', 'Food', 'Pups & Kitties', 'Fortune Teller'].sample,
    price: rand(50..1000),
    user: User.first,
    description: Faker::Company.catch_phrase
  )
  trucks.save!
puts 'New truck!'
end
puts 'Trucks created you have the best db ever bae!'


# User.create!(email: 'romain@yolo.fr', password: 'romain' )
# Truck.create!(name: 'Yoga Teacher', category: 'Yoga', price: 100, user:User.first)
# Truck.create!(name: 'Drink n Code', category: 'Cocktails', price: 100, user:User.first)
