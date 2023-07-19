# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.firs
User.create!(name: "Raine", email: "rhanley@email.com", password: "password", image_url: "")

Pet.create!(name: "Dash", image_url: "", description: "Playful Rottweiler looking for his forever home. Sweet and loyal", days_in_shelter: 20, kennel_number: 15, location: "Humane Society")

Pet.create!(name: "Lucy", image_url: "", description: "Sweet Greyhound mix who is", days_in_shelter: 10, kennel_number: 1, location: "ASPCA")

Favorited_Pets.create!(user_id: 2, pet_id: 1)

Favorited_Pets.create!(user_id: 1, pet_id: 2)

Location.create!(name: "ASPCA", address: "Brooklyn, 2336 Linden Blvd, Brooklyn, NY 11208")

Location.create!(name: "Humane Society", address: "Reno, NV")
