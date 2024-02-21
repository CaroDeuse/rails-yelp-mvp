# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts 'Creating fake restaurants...'

Restaurant.create!(name: "Chez Chichi", address: "fkjfdjf street", category:"chinese", phone_number:"2262546")
Restaurant.create!(name: "Ritals", address: "mlgmlsgmlqfe street", category:"italian", phone_number:"34534")
Restaurant.create!(name: "Chez Jaja", address: "zltktklgzbgk street", category:"japanese", phone_number:"346456")
Restaurant.create!(name: "Frouz", address: "zeoezko street", category:"french", phone_number:"575673")
Restaurant.create!(name: "Chez nous", address: "fkfkfskjd street", category:"belgian", phone_number:"57546")

puts 'Finished!'
