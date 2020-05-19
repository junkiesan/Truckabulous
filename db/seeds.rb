# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'

# puts 'Creating user...'
# 10.times do
#   users = User.new(
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#     password: Faker::Internet.password,
#   )
#   users.save!
# puts 'New user!'
# end
Booking.destroy_all
Truck.destroy_all
User.destroy_all

User.create!(email: 'romain@yolo.fr', password: 'romain' )
Truck.create!(name: 'yoga', user: User.first)

