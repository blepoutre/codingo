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
  validation: "18",
  title: "Opérateur Basique",
  concept: "Addition (+) :
          Imagine que tu as 3 bonbons et que ton ami te donne 2 bonbons de plus.
          Tu as maintenant 3 + 2 bonbons, ce qui fait 5 bonbons en tout.

          Soustraction (-) :
          Tu as 5 bonbons et tu en manges 2.
          Il te reste maintenant 5 - 2 bonbons, ce qui fait 3 bonbons.

          Multiplication (x) :
          Tu as 2 sacs, et dans chaque sac, il y a 3 bonbons.
          Tu as donc 2 x 3 bonbons, ce qui fait 6 bonbons en tout.

          Division (÷) :
          Tu as 8 bonbons et tu veux les partager équitablement avec 3 amis (donc 4 enfants en tout).
          Chaque enfant reçoit 8 ÷ 4 bonbons, ce qui fait 2 bonbons chacun.",
  question: "Qu'est-il afficher sur la caisse enregistreuse ?",
  reward: 10,
  world: World.first,
  answers: ["21", "34", "67", "100", "18"],
  url: "https://trinket.io/embed/blocks/9a88b4d5c6?hideGeneratedCode=true&showInstructions=true",
  number: 1
)
level1.save!

puts "--------------------------------level 2------------------------------------"

level2 = Level.new(
  validation: "10",
  title: "Les Boucles",
  concept: "Imagine que tu veux dessiner 10 étoiles sur une feuille de papier.
            Sans boucle :
	            1.	Tu dessines une étoile.
	            2.	Tu dessines une autre étoile.
	            3.	Tu dessines encore une étoile.
	            4.	Tu continues jusqu'à ce que tu aies dessiné 10 étoiles.
            C'est un peu long et ennuyeux, non ?
            Avec une boucle :
	            1.	Tu dis à l'ordinateur : Dessine une étoile.
	            2.	Ensuite, tu dis : Répète cette action 10 fois.
            L'ordinateur va alors dessiner les 10 étoiles tout seul, sans que tu aies besoin de lui dire 10 fois.",
  question: "Combien d'étoiles vois-tu ?",
  reward: 20,
  world: World.first,
  answers: ["10", "9", "19", "21", "50"],
  url: "https://trinket.io/embed/blocks/c6759f273c?hideGeneratedCode=true&showInstructions=true",
  number: 2
)
level2.save!

puts "--------------------------------level 3------------------------------------"

level3 = Level.new(
  validation: "18",
  title: "Opérateur Basique",
  concept: "Addition (+) :
          Imagine que tu as 3 bonbons et que ton ami te donne 2 bonbons de plus.
          Tu as maintenant 3 + 2 bonbons, ce qui fait 5 bonbons en tout.

          Soustraction (-) :
          Tu as 5 bonbons et tu en manges 2.
          Il te reste maintenant 5 - 2 bonbons, ce qui fait 3 bonbons.

          Multiplication (x) :
          Tu as 2 sacs, et dans chaque sac, il y a 3 bonbons.
          Tu as donc 2 x 3 bonbons, ce qui fait 6 bonbons en tout.

          Division (÷) :
          Tu as 8 bonbons et tu veux les partager équitablement avec 3 amis (donc 4 enfants en tout).
          Chaque enfant reçoit 8 ÷ 4 bonbons, ce qui fait 2 bonbons chacun.",
  reward: 25,
  world: World.first,
  answers: ["21", "34", "67", "100", "18"],
  url: "https://trinket.io/embed/blocks/9a88b4d5c6?hideGeneratedCode=true&showInstructions=true",
  number: 3
)
level3.save!

puts "--------------------------------level 4------------------------------------"

level4 = Level.new(
  validation: "10",
  title: "Les Boucles",
  concept: "Imagine que tu veux dessiner 10 étoiles sur une feuille de papier.
            Sans boucle :
	            1.	Tu dessines une étoile.
	            2.	Tu dessines une autre étoile.
	            3.	Tu dessines encore une étoile.
	            4.	Tu continues jusqu'à ce que tu aies dessiné 10 étoiles.
            C'est un peu long et ennuyeux, non ?
            Avec une boucle :
	            1.	Tu dis à l'ordinateur : Dessine une étoile.
	            2.	Ensuite, tu dis : Répète cette action 10 fois.
            L'ordinateur va alors dessiner les 10 étoiles tout seul, sans que tu aies besoin de lui dire 10 fois.",
  reward: 30,
  world: World.first,
  answers: ["10", "9", "19", "21", "50"],
  url: "https://trinket.io/embed/blocks/c6759f273c?hideGeneratedCode=true&showInstructions=true",
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
character = Character.new(nickname: "Lina la puissante", personality: "Lina est agile et rapide, connue pour ses figures acrobatiques impressionnantes. Elle a un sens inné de l'équilibre et une puissance remarquable, permettant des tricks audacieux. Ses amis admirent sa capacité à combiner force et précision.", price: 30)
character.photos.attach(io: file1, filename: "Lina.png", content_type: "image/png")
character.photos.attach(io: file2, filename: "Lina-skate.png", content_type: "image/png")
character.save

file1 = URI.open("https://res.cloudinary.com/djp2y2hvl/image/upload/v1718098436/codingo_images/Bree_czohz4.png")
file2 = URI.open("https://res.cloudinary.com/djp2y2hvl/image/upload/v1718098436/codingo_images/Bree_-_Skate_hyb7k8.png")
character = Character.new(nickname: "Bree la force tranquille", personality: "Bree est la force tranquille du groupe. Toujours présente pour ses amis, elle a un cœur d'or. Elle utilise sa puissance pour effectuer des tricks spectaculaires et adore explorer de nouveaux terrains de skate.", price: 30)
character.photos.attach(io: file1, filename: "Bree.png", content_type: "image/png")
character.photos.attach(io: file2, filename: "Bree-skate.png", content_type: "image/png")
character.save

file1 = URI.open("https://res.cloudinary.com/djp2y2hvl/image/upload/v1718098436/codingo_images/Leo_p4kqn4.png")
file2 = URI.open("https://res.cloudinary.com/djp2y2hvl/image/upload/v1718098434/codingo_images/Leo_-_Skate_jt7ool.png")
character = Character.new(nickname: "Leo l'intrépide", personality: "Leo est plein de courage et de détermination. Avec son énergie débordante, il est toujours prêt à relever de nouveaux défis. Sa passion pour le skate et son enthousiasme contagieux en font un membre précieux du groupe.", price: 30)
character.photos.attach(io: file1, filename: "Leo.png", content_type: "image/png")
character.photos.attach(io: file2, filename: "Leo-skate.png", content_type: "image/png")
character.save

file1 = URI.open("https://res.cloudinary.com/djp2y2hvl/image/upload/v1718098434/codingo_images/Corbye_e9beoc.png")
file2 = URI.open("https://res.cloudinary.com/djp2y2hvl/image/upload/v1718098436/codingo_images/Corbye_-_Skate_ezex4i.png")
character = Character.new(nickname: "Corbye l'idéaliste", personality: "Stratège du groupe. Toujours à l'affût de nouvelles techniques, iel observe attentivement ses amis pour perfectionner ses propres mouvements. Son habileté et son intelligence en font un membre indispensable de l'équipe.", price: 30)
character.photos.attach(io: file1, filename: "Corbye.png", content_type: "image/png")
character.photos.attach(io: file2, filename: "Corbye-skate.png", content_type: "image/png")
character.save

file1 = URI.open("https://res.cloudinary.com/djp2y2hvl/image/upload/v1718098433/codingo_images/Than_cl18ns.png")
file2 = URI.open("https://res.cloudinary.com/djp2y2hvl/image/upload/v1718098434/codingo_images/Than_-_Skate_eo5x6j.png")
character = Character.new(nickname: "Than l'audacieux", personality: "Than est mystérieux et audacieux, avec une vitesse incroyable et une souplesse hors du commun. Il aime prendre des risques et tenter des figures inédites, captivant l'attention de tous par ses performances impressionnantes.", price: 30)
character.photos.attach(io: file1, filename: "Than.png", content_type: "image/png")
character.photos.attach(io: file2, filename: "Than-skate.png", content_type: "image/png")
character.save

puts "--------------------------------End of seed------------------------------------"
