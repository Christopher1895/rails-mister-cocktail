require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all

Ingredient.create(name: "Mint")
Ingredient.create(name: "Vodka")
Ingredient.create(name: "Rhum")
Ingredient.create(name: "Tequila")
Ingredient.create(name: "Orange Juice")
Ingredient.create(name: "Tomato Juice")

# puts 'Destroying poisonous beverages'
# Dose.destroy_all
# 10.times do
#   Cocktail.create(name: Faker::FunnyName.name)
# end
# puts 'Fancy booze selection have just been brewed🍹'


Cocktail.create(name: "Mojito")
Cocktail.create(name: "Blood Mary")
Cocktail.create(name: "Sex on the Beach")
Cocktail.create(name: "Margarita")
Cocktail.create(name: "Pina Colada")

# Dose.create(description: "6 leaves")
# Dose.create(description: "1.5 oz")
# Dose.create(description: "4.5 cl")
# Dose.create(description: "9 cl")
# Dose.create(description: "1.33 oz")
# Dose.create(description: "2 cl")
