# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

images = ["https://images.unsplash.com/photo-1568605114967-8130f3a36994?q=80&w=2940&auto=format&height=400&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
"https://images.unsplash.com/photo-1512917774080-9991f1c4c750?q=80&w=2940&auto=format&height=400&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
"https://images.unsplash.com/photo-1512917774080-9991f1c4c750?q=80&w=2940&auto=format&height=400&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
"https://images.unsplash.com/photo-1480074568708-e7b720bb3f09?q=80&w=2948&auto=format&height=400&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"]

6.times do
  Flat.create(
    name: Faker::Address.community,
    address: Faker::Address.full_address,
    description: Faker::Marketing.buzzwords,
    price_per_night: Faker::Number.binary(digits: 3),
    number_of_guests: Faker::Number.within(range: 1..10),
    image: images.sample)
  puts "created one flat"
end

puts "finished"
