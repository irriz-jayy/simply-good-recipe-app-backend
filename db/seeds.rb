# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require 'faker'

# Create random user
puts "Creating users..."
10.times do 
    User.create(
     name: Faker::Name.name,
     email: Faker::Internet.email,
     username: Faker::Internet.username(specifier: 8..12),
     password: Faker::Internet.password,
     profile_picture_url: Faker::Avatar.image,
    )
end

puts "Done creating users"

puts "Creating recipes..."
15.times do
    Recipe.create(
     user_id: rand(1..10),
     name: Faker::Food.dish,
     country_of_origin: Faker::Address.country,
     description: Faker::Lorem.paragraph,
     ingredients: Faker::Food.ingredient,
     directions: Faker::Lorem.paragraphs(number: 3).join("\n"),
     number_of_people_served: rand(1..4)
    )
end
puts "Done creating recipes"

puts "Rating recipes..."
15.times do
    Rating.create(
        user_id: rand(1..10),
        recipe_id: rand(1..15),
        rating: rand(3..5)
    )
end
puts "Done rating recipes"

puts "Creating comments..."
20.times do
    Comment.create(
        user_id: rand(1..10),
        recipe_id: rand(1..15),
        comment: Faker::Lorem.paragraphs(number: 2). join("\n")
    )
end
puts "Done creating comments"

puts "Creating bookmarks..."
20.times do
    Bookmark.create(
        user_id: rand(1..10),
        recipe_id: rand(1..15)
    )
end
puts "Done creating bookmarks"