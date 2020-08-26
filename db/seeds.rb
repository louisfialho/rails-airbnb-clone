Flat.destroy_all
User.destroy_all

require 'faker'

puts "Creating flats..."

sean = User.new(name:"Sean", role:"visitor", email:"a@gmail.com", password:"abc123")
sean.save!
louis = User.new(name:"Louis", role:"host", email:"l@gmail.com", password:"abc123")
louis.save!
ricardo = User.new(name:"Ricardo", role:"host", email:"123@gmail.com", password:"123456")
louis.save!

30.times do
  flat = Flat.new(host:louis, title: Faker::Address.street_name, description: "Really nice flat in #{:location}", location: "London", price: rand(100.1000), image_url: "https://dqav65i4xqidd.cloudfront.net/app/uploads/20180519094708/t2-sete-rios-2.png")
  flat.save!
end

30.times do
  flat = Flat.new(host:louis, title: Faker::Address.street_name, description: "Really nice flat in #{:location}", location: "Paris", price: rand(100.1000), image_url: "https://dqav65i4xqidd.cloudfront.net/app/uploads/20180519094708/t2-sete-rios-2.png")
  flat.save!
end

flat = Flat.new(host:louis, title: "London Big flat", description: "Really nice flat in Marques de Pombal", location: "London", price: rand(100.1000), image_url: "https://dqav65i4xqidd.cloudfront.net/app/uploads/20180519094708/t2-sete-rios-2.png")
flat.save!


flat = Flat.new(host:louis, title: "London Big flat", description: "Really nice flat in Marques de Pombal", location: "London", price: rand(100.1000), image_url: "https://dqav65i4xqidd.cloudfront.net/app/uploads/20180519094708/t2-sete-rios-2.png")
 flat.save!

flat = Flat.new(host:louis, title: "Bairro Alto flat", description: "Really nice flat in Bairro Alto", location: "Lisbon", price: rand(100.1000), image_url: "https://d1bvpoagx8hqbg.cloudfront.net/originals/amazing-view-lisbon-centre-34e852280371ff86cefa5b457c1dcb85.jpg")
flat.save!

 flat = Flat.new(host:louis, title: "Belem flat", description: "Really nice flat in Belem", location: "Lisbon", price: rand(100.1000), image_url:"https://thespaces.com/wp-content/uploads/2017/01/Lisbon-apartments-for-rent-Baixa-House-1.jpg")
 flat.save!

 flat = Flat.new(host:louis, title: "Chiado flat", description: "Really nice flat in Chiado", location: "Lisbon", price: rand(100.1000), image_url:"https://d1bvpoagx8hqbg.cloudfront.net/originals/sunny-flat-heart-lisbon-207180cf4f84f05e668755d0f82ee94b.jpg")
 flat.save!

 flat = Flat.new(host:louis, title: "Principe Real flat", description: "Really nice flat in Principe Real", location: "Lisbon", price: rand(100.1000), image_url:"https://thespaces.com/wp-content/uploads/2017/01/Lisbon-apartments-for-rent-Baixa-House.jpg")
 flat.save!

 flat = Flat.new(host:louis, title: "Baixa flat", description: "Really nice flat in Baixa", location: "Lisbon", price: rand(100.1000), image_url: "https://a0.muscache.com/im/pictures/29be0469-56ab-456d-baeb-52cb13b81ad8.jpg?aki_policy=xx_large")
 flat.save!

 flat = Flat.new(host:louis, title: "Marques de Pombal flat", description: "Really nice flat in Marques de Pombal", location: "Lisbon", price: rand(100.1000), image_url: "https://dqav65i4xqidd.cloudfront.net/app/uploads/20180519094708/t2-sete-rios-2.png")




 bairro = Flat.new(host:louis, title: "Bairro Alto flat", description: "Really nice flat in Bairro Alto", location: "Lisbon", price: 100, image_url: "https://d1bvpoagx8hqbg.cloudfront.net/originals/amazing-view-lisbon-centre-34e852280371ff86cefa5b457c1dcb85.jpg", )
 bairro.save!

 belem = Flat.new(host:louis, title: "Belem flat", description: "Really nice flat in Belem", location: "Lisbon", price: 100, image_url:"https://thespaces.com/wp-content/uploads/2017/01/Lisbon-apartments-for-rent-Baixa-House-1.jpg")
 belem.save!

 chiado = Flat.new(host:louis, title: "Chiado flat", description: "Really nice flat in Chiado", location: "Lisbon", price: 100, image_url:"https://d1bvpoagx8hqbg.cloudfront.net/originals/sunny-flat-heart-lisbon-207180cf4f84f05e668755d0f82ee94b.jpg")
 chiado.save!


flat = Flat.new(host:louis, title: "Principe Real flat", description: "Really nice flat in Principe Real", location: "Lisbon", price: 100, image_url:"https://thespaces.com/wp-content/uploads/2017/01/Lisbon-apartments-for-rent-Baixa-House.jpg")
flat.save!

flat = Flat.new(host:louis, title: "Baixa flat", description: "Really nice flat in Baixa", location: "Lisbon", price: 100, image_url: "https://a0.muscache.com/im/pictures/29be0469-56ab-456d-baeb-52cb13b81ad8.jpg?aki_policy=xx_large")
flat.save!

flat = Flat.new(host:louis, title: "Marques de Pombal flat", description: "Really nice flat in Marques de Pombal", location: "Lisbon", price: 100, image_url: "https://dqav65i4xqidd.cloudfront.net/app/uploads/20180519094708/t2-sete-rios-2.png")
flat.save!

review1 = Review.new(text:"amazing stunning flat", user:sean, flat:bairro)
review1.save

puts 'Finished!'


