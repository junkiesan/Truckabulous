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


truck_1 = Truck.new(name: 'Tacos Tuesday', category: 'Food', price: 150, description: 'The best Mexican tacos in town! Vegeterian options also available', user: kenza, address: "16 villa gaudelet, paris")
file = URI.open('https://fac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Ffac.2F2018.2F07.2F30.2F8c5b9e9e-20ae-4b77-aced-23318ca9289a.2Ejpeg/750x562/quality/80/crop-from/center/cr/wqkgTWFpemVuYSAvIEZlbW1lIEFjdHVlbGxl/tacos-de-poulet-marine-sauce-coriandre-et-tequila.jpeg')
truck_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
truck_1.save!

truck_2 = Truck.new(name: 'Sushi & Sashimi', category: 'Food', price: 200, description: 'Fresh fish for your sushi party!', user:User.first, address: "72 avenue parmentier, paris")
file = URI.open('https://www.easy-sushi83.com/images/tetiere/sushis-restaurant.jpg')
truck_2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
truck_2.save!

truck_3 = Truck.new(name: 'Yoga Flow', category: 'Yoga', price: 190, description: 'Enjoy this unique Yoga class for a relaxed & zen attitude', user:User.first, address: "51 avenue de la corniche fleurie, nice")
file = URI.open('https://static.lexpress.fr/medias_8863/w_1570,h_683,c_crop,x_444,y_331/w_1000,h_563,c_fill,g_north/v1385750103/yoga-1_4538138.jpg')
truck_3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
truck_3.save!

truck_4 = Truck.new(name: 'Dynamic Yoga', category: 'Yoga', price: 150, description: 'A mix of traditional Yoga with a dynamic twist!', user:User.first, address: "244 hameau des veyans, le tignet")
file = URI.open('https://resize2.prod.docfr.doc-media.fr/r/1010,,forcex/img/var/doctissimo/storage/images/fr/www/forme/diaporamas/posture-de-yoga-postures-yoga/1778411-4-fre-FR/Ma-seance-de-Yoga-les-60-postures-cles.jpg')
truck_4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
truck_4.save!

truck_5 = Truck.new(name: 'Spicy Cocktails', category: 'Cocktails', price: 120, description: 'Spice up your event with our amazing & delicious cocktails!', user: kenza, address: "5 chemin du suye, peymeinade")
file = URI.open('https://icdn2.themanual.com/image/themanual/hot_sauce_cocktails_spicy_tequila_sunrise_pc_in_the_raw.jpg')
truck_5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
truck_5.save!

truck_6 = Truck.new(name: 'Drink n Code', category: 'Cocktails', price: 100, description: 'Throwing a code AND drink party? This truck is for you!', user:User.first, address: "200 avenue clémenceau, paris")
file = URI.open('https://korii.slate.fr/sites/default/files/styles/1440x600/public/chris-ried-ieic5tq8ymk-unsplash.jpg')
truck_6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
truck_6.save!

truck_7 = Truck.new(name: 'Puppy love', category: 'Pups & Kitties', price: 110, description: 'The truck for animal lovers! Half of total price goes to an animal shelter association!', user:User.first, address: "45 rue oberkampf, paris")
file = URI.open('https://i.pinimg.com/originals/51/6c/75/516c7547948f4110b498008871e31dec.jpg')
truck_7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
truck_7.save!

truck_8 = Truck.new(name: 'Burger Atelier', category: 'Food', price: 135, description: 'big burgers for hungry peoples !', user:User.first, address: "place de la nation, paris")
file = URI.open('https://assets.afcdn.com/recipe/20180614/79556_w1024h768c1cx2727cy1818cxt0cyt0cxb5450cyb3633.jpg')
truck_8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
truck_8.save!

truck_9 = Truck.new(name: 'Magic', category: 'Kids', price: 90, description: 'Magician, rabbits and all kinds of tricks for the best Kids party ever!', user:User.first, address: "fontainebleau")
file = URI.open('https://assets.afcdn.com/recipe/20180614/79556_w1024h768c1cx2727cy1818cxt0cyt0cxb5450cyb3633.jpg')
truck_9.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
truck_9.save!


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

