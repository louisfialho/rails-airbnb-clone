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

my_array = ["kitchen" , "bedroom", "living_room", "floor"]
30.times do
  flat = Flat.new(host:louis, flat_type: type.sample, title: Faker::Address.street_name, description: "Really nice flat in #{:location}", location: "London", price: rand(100.1000), image_url: "https://source.unsplash.com/692x459/?#{my_array[rand(0..3)]}", image_url2: "https://source.unsplash.com/692x459/?#{my_array[rand(0..3)]}", image_url3: "https://source.unsplash.com/692x459/?#{my_array[rand(0..3)]}", longitude: Faker::Address.longitude, latitude: Faker::Address.latitude, address: Faker::Address.full_address, capacity: rand(1..5))
  flat.save!
  flat = Flat.new(host:louis,flat_type: type.sample, title: Faker::Address.street_name, description: "Really nice flat in #{:location}", location: "London", price: rand(100.1000), image_url: "https://source.unsplash.com/692x459/?#{my_array[rand(0..3)]}", image_url2: "https://source.unsplash.com/692x459/?#{my_array[rand(0..3)]}", image_url3: "https://source.unsplash.com/692x459/?#{my_array[rand(0..3)]}", longitude: Faker::Address.longitude, latitude: Faker::Address.latitude, address: Faker::Address.full_address, capacity: rand(1..5))
  flat.save!
end

30.times do
  flat = Flat.new(host:louis, flat_type: type.sample, title: Faker::Address.street_name, description: "Really nice flat in #{:location}", location: "Lisbon", price: rand(100.1000), image_url: "https://source.unsplash.com/692x459/?#{my_array[rand(0..3)]}", image_url2: "https://source.unsplash.com/692x459/?#{my_array[rand(0..3)]}", image_url3: "https://source.unsplash.com/692x459/?#{my_array[rand(0..3)]}", longitude: Faker::Address.longitude, latitude: Faker::Address.latitude, address: Faker::Address.full_address, capacity: rand(1..5))
  flat.save!
  flat = Flat.new(host:louis,flat_type: type.sample, title: Faker::Address.street_name, description: "Really nice flat in #{:location}", location: "Lisbon", price: rand(100.1000), image_url: "https://source.unsplash.com/692x459/?#{my_array[rand(0..3)]}", image_url2: "https://source.unsplash.com/692x459/?#{my_array[rand(0..3)]}", image_url3: "https://source.unsplash.com/692x459/?#{my_array[rand(0..3)]}", longitude: Faker::Address.longitude, latitude: Faker::Address.latitude, address: Faker::Address.full_address, capacity: rand(1..5))
  flat.save!
end

puts 'Finished!'


