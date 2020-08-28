Flat.destroy_all
User.destroy_all
Review.destroy_all

require 'faker'

puts "Creating flats..."

type = ["full accommodation", "private room", "hotel room", "shared room" ]

sean = User.new(first_name:"Sean", role:"visitor", email:"a@gmail.com", password:"123456")
sean.save!
louis = User.new(first_name:"Louis", role:"host", email:"l@gmail.com", password:"123456")
louis.save!
ricardo = User.new(first_name:"Ricardo", role:"host", email:"123@gmail.com", password:"123456")
ricardo.save!
christopher = User.new(first_name:"Christopher", role:"host", email:"christopher.nitsche@gmx.de", password:"123456")
christopher.save!

30.times do
  flat = Flat.new(host:louis, flat_type: type.sample, title: Faker::Address.street_name, description: "Really nice flat in #{:location}", location: "London", price: rand(10..100), image_url: "https://dqav65i4xqidd.cloudfront.net/app/uploads/20180519094708/t2-sete-rios-2.png", longitude: Faker::Address.longitude, latitude: Faker::Address.latitude, address: Faker::Address.full_address, capacity: rand(1..5))
  flat.save!
end

30.times do
  flat = Flat.new(host:louis,flat_type: type.sample, title: Faker::Address.street_name, description: "Really nice flat in #{:location}", location: "Paris", price: rand(10..100), image_url: "https://dqav65i4xqidd.cloudfront.net/app/uploads/20180519094708/t2-sete-rios-2.png", longitude: Faker::Address.longitude, latitude: Faker::Address.latitude, address: Faker::Address.full_address, capacity: rand(1..5))
  flat.save!
end

puts 'Finished!'


