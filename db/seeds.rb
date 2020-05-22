# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'open-uri'

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

kenza = User.create(name: 'Kenza', email: 'k.mahresi@gmail.com', password: 'kenza1')


truck_1 = Truck.new(name: 'Tacos Tuesday', category: 'Food', price: 150, description: 'The best Mexican tacos in town! Vegeterian options also available', user: kenza)
file = URI.open('https://www.lemoniteurmateriels.fr/mediatheque/4/3/0/004509034_926x615_fb_ffffff.jpg')
truck_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
truck_1.save!

truck_2 = Truck.new(name: 'Sushi & Sashimi', category: 'Food', price: 200, description: 'Fresh fish for your sushi party!', user:User.first)
file = URI.open('https://www.lemoniteurmateriels.fr/mediatheque/4/3/0/004509034_926x615_fb_ffffff.jpg')
truck_2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
truck_2.save!

# truck_3 = Truck.new(name: 'Yoga Flow', category: 'Yoga', price: 190, description: 'Enjoy this unique Yoga class for a relaxed & zen attitude', user:User.first)
# file = URI.open('https://i.picsum.photos/id/10/2500/1667.jpg')
# truck_3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# truck_3.save!

# truck_4 = Truck.new(name: 'Dynamic Yoga', category: 'Yoga', price: 150, description: 'A mix of traditional Yoga with a dynamic twist!', user:User.first)
# file = URI.open('https://i.picsum.photos/id/10/2500/1667.jpg')
# truck_4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# truck_4.save!

# truck_5 = Truck.new(name: 'Spicy Cocktails', category: 'Cocktails', price: 120, description: 'Spice up your event with our amazing & delicious cocktails!', user: kenza)
# file = URI.open('https://i.picsum.photos/id/10/2500/1667.jpg')
# truck_5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# truck_5.save!

# truck_6 = Truck.new(name: 'Drink n Code', category: 'Cocktails', price: 100, description: 'Throwing a code AND drink party? This truck is for you!', user:User.first)
# file = URI.open('https://i.picsum.photos/id/10/2500/1667.jpg')
# truck_6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# truck_6.save!

# truck_7 = Truck.new(name: 'Puppy love', category: 'Pups & Kitties', price: 110, description: 'The truck for animal lovers! Half of total price goes to an animal shelter association!', user:User.first)
# file = URI.open('https://i.picsum.photos/id/10/2500/1667.jpg')
# truck_7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# truck_7.save!

# truck_8 = Truck.new(name: 'Mystic & Mysteries', category: 'Fortune Teller', price: 135, description: 'Want to know what the future holds for you? From Astrology reading to Tarot cards, this will be a mystical experience!', user:User.first)
# file = URI.open('https://i.picsum.photos/id/10/2500/1667.jpg')
# truck_8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# truck_8.save!

# truck_9 = Truck.new(name: 'Magic', category: 'Kids', price: 90, description: 'Magician, rabbits and all kinds of tricks for the best Kids party ever!', user:User.first)
# file = URI.open('https://i.picsum.photos/id/10/2500/1667.jpg')
# truck_9.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# truck_9.save!


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


# user = User.new(email: 'romain@yolo.fr', password: 'romain' )
# user.save!

