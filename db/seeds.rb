# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"

Level.destroy_all
World.destroy_all
User.destroy_all
Party.destroy_all
Character.destroy_all

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

# Characters ;
puts "--------------------------------Characters------------------------------------"

# characters = [
#   { nickname: "Lina la puissante", personality: "Lina est agile et rapide, connue pour ses figures acrobatiques impressionnantes. Elle a un sens inné de l'équilibre et une puissance remarquable, permettant des tricks audacieux. Ses amis admirent sa capacité à combiner force et précision."},
#   { nickname: "Bree la force tranquille", personality: "Bree est la force tranquille du groupe. Toujours présente pour ses amis, elle a un cœur d'or. Elle utilise sa puissance pour effectuer des tricks spectaculaires et adore explorer de nouveaux terrains de skate."},
#   { nickname: "Leo l'intrépide", personality: "Leo est plein de courage et de détermination. Avec son énergie débordante, il est toujours prêt à relever de nouveaux défis. Sa passion pour le skate et son enthousiasme contagieux en font un membre précieux du groupe."},
#   { nickname: "Corbye l'idéaliste", personality: "Stratège du groupe. Toujours à l'affût de nouvelles techniques, iel observe attentivement ses amis pour perfectionner ses propres mouvements. Son habileté et son intelligence en font un membre indispensable de l'équipe."},
#   { nickname: "Than l'audacieux", personality: "Than est mystérieux et audacieux, avec une vitesse incroyable et une souplesse hors du commun. Il aime prendre des risques et tenter des figures inédites, captivant l'attention de tous par ses performances impressionnantes."},
# ]


file1 = URI.open("https://res.cloudinary.com/djp2y2hvl/image/upload/v1718098433/codingo_images/Lina_qgcqwk.png")
file2 = URI.open("https://res.cloudinary.com/djp2y2hvl/image/upload/v1718098433/codingo_images/Lina_-_Skate.png")
character = Character.new(nickname: "Lina la puissante", personality: "Lina est agile et rapide, connue pour ses figures acrobatiques impressionnantes. Elle a un sens inné de l'équilibre et une puissance remarquable, permettant des tricks audacieux. Ses amis admirent sa capacité à combiner force et précision.")
character.photos.attach(io: file1, filename: "Lina.png", content_type: "image/png")
character.photos.attach(io: file2, filename: "Lina-skate.png", content_type: "image/png")
character.save

file1 = URI.open("https://res.cloudinary.com/djp2y2hvl/image/upload/v1718098436/codingo_images/Bree_czohz4.png")
file2 = URI.open("https://res.cloudinary.com/djp2y2hvl/image/upload/v1718098436/codingo_images/Bree_-_Skate_hyb7k8.png")
character = Character.new(nickname: "Bree la force tranquille", personality: "Bree est la force tranquille du groupe. Toujours présente pour ses amis, elle a un cœur d'or. Elle utilise sa puissance pour effectuer des tricks spectaculaires et adore explorer de nouveaux terrains de skate.")
character.photos.attach(io: file1, filename: "Bree.png", content_type: "image/png")
character.photos.attach(io: file2, filename: "Bree-skate.png", content_type: "image/png")
character.save

file1 = URI.open("https://res.cloudinary.com/djp2y2hvl/image/upload/v1718098436/codingo_images/Leo_p4kqn4.png")
file2 = URI.open("https://res.cloudinary.com/djp2y2hvl/image/upload/v1718098434/codingo_images/Leo_-_Skate_jt7ool.png")
character = Character.new(nickname: "Leo l'intrépide", personality: "Leo est plein de courage et de détermination. Avec son énergie débordante, il est toujours prêt à relever de nouveaux défis. Sa passion pour le skate et son enthousiasme contagieux en font un membre précieux du groupe.")
character.photos.attach(io: file1, filename: "Leo.png", content_type: "image/png")
character.photos.attach(io: file2, filename: "Leo-skate.png", content_type: "image/png")
character.save

file1 = URI.open("https://res.cloudinary.com/djp2y2hvl/image/upload/v1718098434/codingo_images/Corbye_e9beoc.png")
file2 = URI.open("https://res.cloudinary.com/djp2y2hvl/image/upload/v1718098436/codingo_images/Corbye_-_Skate_ezex4i.png")
character = Character.new(nickname: "Corbye l'idéaliste", personality: "Stratège du groupe. Toujours à l'affût de nouvelles techniques, iel observe attentivement ses amis pour perfectionner ses propres mouvements. Son habileté et son intelligence en font un membre indispensable de l'équipe.")
character.photos.attach(io: file1, filename: "Corbye.png", content_type: "image/png")
character.photos.attach(io: file2, filename: "Corbye-skate.png", content_type: "image/png")
character.save

file1 = URI.open("https://res.cloudinary.com/djp2y2hvl/image/upload/v1718098433/codingo_images/Than_cl18ns.png")
file2 = URI.open("https://res.cloudinary.com/djp2y2hvl/image/upload/v1718098434/codingo_images/Than_-_Skate_eo5x6j.png")
character = Character.new(nickname: "Than l'audacieux", personality: "SThan est mystérieux et audacieux, avec une vitesse incroyable et une souplesse hors du commun. Il aime prendre des risques et tenter des figures inédites, captivant l'attention de tous par ses performances impressionnantes.")
character.photos.attach(io: file1, filename: "Than.png", content_type: "image/png")
character.photos.attach(io: file2, filename: "Than-skate.png", content_type: "image/png")
character.save

puts "--------------------------------End of seed------------------------------------"


collection_1 = Collection.create!(user_id:4, character_id: 11)
