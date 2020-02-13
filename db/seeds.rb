# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

lemon = Ingredient.create!(name: "lemon")
ice = Ingredient.create!(name: "ice")
schnapps = Ingredient.create!(name: "strawberry schnapps")
Ingredient.create!(name: "dark rum")
Ingredient.create!(name: "mint leaves")

white = Cocktail.create!(name: "White Russian")
Cocktail.create!(name: "Moscow Mule")
Cocktail.create!(name: "Gin Tonic")
Cocktail.create!(name: "Long Island")
Cocktail.create!(name: "Mojito")
Cocktail.create!(name: "Vodka Orange")

Dose.create!(description: "3 dl", ingredient_id: lemon.id, cocktail_id: white.id)
Dose.create!(description: "un chouya", ingredient_id: ice.id, cocktail_id: white.id)
Dose.create!(description: "la dose", ingredient_id: schnapps.id, cocktail_id: white.id)
# Dose.create!(description: "un tout tout petit peu", ingredient_id: "4", cocktail_id: "4")
# Dose.create!(description: "10 tonnes", ingredient_id: "5", cocktail_id: "5")
