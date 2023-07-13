# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Create users
puts "Creating users..."
users_data = [
  { name: "John mokoba", email: "john45@gmail.com", username: "johnm00", password: "mypassword", profile_picture_url: "https://images.unsplash.com/photo-1577219491135-ce391730fb2c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60" },
  { name: "Jane Saul", email: "jane13@gmail.com", username: "janethebest", password: "123password", profile_picture_url: "https://images.unsplash.com/photo-1565608087341-404b25492fee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80" },
  { name: "Michael Mutua", email: "michael56@gmail.com", username: "omgmichael", password: "456password", profile_picture_url: "https://images.unsplash.com/photo-1447279506476-3faec8071eee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YmxhY2slMjBtYWxlJTIwY2hlZnN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60" },
  { name: "Emily Kamau", email: "emily25@gmail.com", username: "emilyb", password: "ijustlovecookin28", profile_picture_url: "https://plus.unsplash.com/premium_photo-1661778091956-15dbe6e47442?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80" },
  { name: "Jay felix", email: "jay335@gmail.com", username: "jeyfelix27", password: "wouldyoulookatthat12.", profile_picture_url: "https://plus.unsplash.com/premium_photo-1666299819315-929b3fae4450?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=869&q=80" },
  { name: "Sophia Mathew", email: "sophia90@gmail.com", username: "sophiam", password: "icantevencookallofthese", profile_picture_url: "https://plus.unsplash.com/premium_photo-1686360865541-ba8740d3c323?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80" },

]
users_data.each do |user_data|
  User.create(user_data)
end
puts "Done creating users"

# Create recipes
puts "Creating recipes..."
recipes_data = [
  { user_id: 2, name: "Pilau Rice", country_of_origin: "Tanzania", description: "Fragrant spiced rice dish from Tanzania.", ingredients: "Basmati rice, beef or chicken, onions, garlic, spices", directions: "1. Sauté onions and garlic. 2. Add spices and meat. 3. Cook until meat is browned. 4. Add rice and water. 5. Simmer until rice is cooked. 6. Serve hot.", number_of_people_served: 6 },
  { user_id: 1, name: "Ugali with Sukuma Wiki", country_of_origin: "Kenya", description: "Traditional Kenyan dish made with cornmeal and collard greens.", ingredients: "Cornmeal, water, collard greens, tomatoes, onions", directions: "1. Boil water in a pot. 2. Gradually add cornmeal, stirring constantly. 3. Cook until thickened. 4. In a separate pan, sauté onions, tomatoes, and collard greens. 5. Serve the cooked ugali with the sautéed vegetables.", number_of_people_served: 4 },
  { user_id: 4, name: "Kenyan Pilau", country_of_origin: "Kenya", description: "A fragrant rice dish cooked with spices and meat.", ingredients: "Basmati rice, beef, onions, garlic, spices", directions: "1. Sauté onions and garlic. 2. Add spices and meat. 3. Cook until meat is browned. 4. Add rice and water. 5. Simmer until rice is cooked. 6. Serve hot.", number_of_people_served: 6 },
  { user_id: 1, name: "Pasta Carbonara", country_of_origin: "Italy", description: "Delicious pasta dish with eggs and bacon.", ingredients: "Pasta, eggs, bacon, cheese", directions: "1. Cook pasta. 2. Fry bacon. 3. Beat eggs. 4. Mix everything together. 5. Enjoy!", number_of_people_served: 2 },
  { user_id: 2, name: "Chicken Curry", country_of_origin: "India", description: "Spicy and flavorful chicken curry.", ingredients: "Chicken, onions, tomatoes, spices", directions: "1. Sauté onions. 2. Add chicken and spices. 3. Cook until done. 4. Serve with rice.", number_of_people_served: 4 },
  { user_id: 3, name: "Chocolate Chip Cookies", country_of_origin: "United States", description: "Classic homemade chocolate chip cookies.", ingredients: "Flour, butter, sugar, chocolate chips", directions: "1. Preheat oven. 2. Cream butter and sugar. 3. Add dry ingredients. 4. Fold in chocolate chips. 5. Bake until golden brown.", number_of_people_served: 12 },
  { user_id: 3, name: "Mandazi", country_of_origin: "Kenya", description: "Traditional Kenyan fried doughnuts.", ingredients: "Flour, sugar, coconut milk, cardamom", directions: "1. Mix flour, sugar, and cardamom in a bowl. 2. Add coconut milk gradually and knead to form a dough. 3. Roll out the dough and cut into desired shapes. 4. Deep-fry until golden brown. 5. Serve hot.", number_of_people_served: 8 },
  { user_id: 4, name: "Nyama Choma", country_of_origin: "Kenya", description: "Grilled meat popular in East Africa.", ingredients: "Beef or goat meat, salt, pepper, spices", directions: "1. Marinate the meat with salt, pepper, and spices. 2. Grill over open charcoal or fire. 3. Turn the meat until cooked to desired doneness. 4. Serve with a side of vegetables or ugali.", number_of_people_served: 4 },
  { user_id: 5, name: "Ugandan Rolex", country_of_origin: "Uganda", description: "Popular Ugandan street food made with eggs and chapati.", ingredients: "Eggs, chapati (flatbread), onions, tomatoes", directions: "1. Beat eggs in a bowl. 2. Add chopped onions and tomatoes. 3. Cook the mixture in a pan until the eggs are scrambled. 4. Warm the chapati on a griddle. 5. Place the egg mixture on the chapati and roll it up. 6. Serve hot.", number_of_people_served: 1 },
  { user_id: 6, name: "Ugandan Matoke", country_of_origin: "Uganda", description: "Traditional Ugandan dish made with green bananas.", ingredients: "Green bananas, beef or chicken, onions, tomatoes, spices", directions: "1. Peel and chop the green bananas. 2. Cook the bananas until tender. 3. In a separate pan, sauté onions, tomatoes, and spices. 4. Add beef or chicken to the pan and cook until done. 5. Serve the cooked matoke with the sautéed mixture.", number_of_people_served: 4 },

]
recipes_data.each do |recipe_data|
  Recipe.create(recipe_data)
end
puts "Done creating recipes"

# Create ratings
puts "Rating recipes..."
ratings_data = [
  { user_id: 1, recipe_id: 1, rating: 5 },
  { user_id: 2, recipe_id: 1, rating: 4 },
  { user_id: 6, recipe_id: 6, rating: 5 },
  { user_id: 3, recipe_id: 2, rating: 5 },
  { user_id: 4, recipe_id: 2, rating: 3 },
  { user_id: 1, recipe_id: 3, rating: 4 },
  { user_id: 5, recipe_id: 5, rating: 4 },

]
ratings_data.each do |rating_data|
  Rating.create(rating_data)
end
puts "Done rating recipes"

# Create comments
puts "Creating comments..."
comments_data = [
  { user_id: 1, recipe_id: 1, comment: "This pasta carbonara is amazing!" },
  { user_id: 2, recipe_id: 1, comment: "I added some extra cheese, and it turned out great." },
  { user_id: 3, recipe_id: 2, comment: "The chicken curry was too spicy for my taste." },
  { user_id: 4, recipe_id: 2, comment: "I loved the flavors in this curry. Thanks for sharing!" },
  { user_id: 1, recipe_id: 3, comment: "These chocolate chip cookies are my family's favorite!" },
  { user_id: 5, recipe_id: 5, comment: "The Ugandan Rolex is a delicious and quick meal option." },
  { user_id: 6, recipe_id: 6, comment: "Matoke is a staple in Ugandan cuisine. Love this recipe!" },

]
comments_data.each do |comment_data|
  Comment.create(comment_data)
end
puts "Done creating comments"

# Create bookmarks
puts "Creating bookmarks..."
bookmarks_data = [
  { user_id: 1, recipe_id: 2 },
  { user_id: 2, recipe_id: 3 },
  { user_id: 3, recipe_id: 1 },
  { user_id: 4, recipe_id: 3 },

]
bookmarks_data.each do |bookmark_data|
  Bookmark.create(bookmark_data)
end
puts "Done creating bookmarks"
puts "Done seeding..."