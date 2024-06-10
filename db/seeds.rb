# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Level.destroy_all
World.destroy_all
User.destroy_all
Party.destroy_all

puts "--------------------------------User------------------------------------"
user = User.new(
  email: "mathys@gmail.com",
  password: "password",
  name: "Mathys",
  balance: 0
)
user.save!

puts "--------------------------------world------------------------------------"
world = World.new(
  name: "first"
)
world.save!

puts "--------------------------------level 1------------------------------------"

level1 = Level.new(
  validation: 18,
  reward: 10,
  world: World.first,
  answers: ["21", "34", "67", "100", "18"],
  url: "https://trinket.io/embed/blocks/9a88b4d5c6?hideGeneratedCode=true",
  number: 1
)
level1.save!

puts "--------------------------------level 2------------------------------------"

level2 = Level.new(
  validation: 18,
  reward: 15,
  world: World.first,
  answers: ["21", "34", "67", "100", "18"],
  url: "https://trinket.io/embed/blocks/9a88b4d5c6?hideGeneratedCode=true",
  number: 2
)
level2.save!

puts "--------------------------------level 3------------------------------------"

level3 = Level.new(
  validation: 18,
  reward: 20,
  world: World.first,
  answers: ["21", "34", "67", "100", "18"],
  url: "https://trinket.io/embed/blocks/9a88b4d5c6?hideGeneratedCode=true",
  number: 3
)
level3.save!

puts "--------------------------------level 4------------------------------------"

level4 = Level.new(
  validation: 18,
  reward: 30,
  world: World.first,
  answers: ["21", "34", "67", "100", "18"],
  url: "https://trinket.io/embed/blocks/9a88b4d5c6?hideGeneratedCode=true",
  number: 4
)
level4.save!

puts "--------------------------------End of seed------------------------------------"
