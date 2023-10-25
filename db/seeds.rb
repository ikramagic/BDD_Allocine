# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Movie.destroy_all

genres = ["Action", "Horreur", "Comédie", "Drame"]

100.times do
    Movie.create!(
        name: Faker::Movie.title, #on doit mettre le .title, sinon ça copie juste bêtement le Faker machin
        year: rand(1900..2020), 
        genre: genres.sample, 
        synopsis: Faker::Lorem.sentence(word_count: 10),
        director: Faker::Name.name, #le .name génère le nom complet, pas juste prénom
        allocine_rating: rand(0.0..5.0).round(1), #round 1 arrondira à 1 chiffre après la virgule
        my_rating: nil,
        already_seen: false
    )
end