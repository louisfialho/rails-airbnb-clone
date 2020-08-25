Flat.destroy_all

puts "Creating flats..."

flat = Flat.new(title: "Bairro Alto flat", description: "Really nice flat in Bairro Alto", location: "Lisbon", price: 100)
flat.save!

flat = Flat.new(title: "Belem flat", description: "Really nice flat in Belem", location: "Lisbon", price: 100)
flat.save!

flat = Flat.new(title: "Chiado flat", description: "Really nice flat in Chiado", location: "Lisbon", price: 100)
flat.save!

flat = Flat.new(title: "Principe Real flat", description: "Really nice flat in Principe Real", location: "Lisbon", price: 100)
flat.save!

flat = Flat.new(title: "Baixa flat", description: "Really nice flat in Baixa", location: "Lisbon", price: 100)
flat.save!

flat = Flat.new(title: "Marques de Pombal flat", description: "Really nice flat in Marques de Pombal", location: "Lisbon", price: 100)
flat.save!

puts 'Finished!'


