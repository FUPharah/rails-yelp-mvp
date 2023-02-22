# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "creating restaurants"
15.times do
  name = Faker::Games::HeroesOfTheStorm.battleground
  address = Faker::Games::WarhammerFantasy.location
  category = Restaurant::CATEGORY.sample
  restaurant = Restaurant.new(name: name, address: address, category: category)
  puts "Created #{restaurant.name}"
  restaurant.save!
end
puts "done"
