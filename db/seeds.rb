# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Ingredient.create([
    { name: "cheese",  quantity: 2, unit: "pound", expires_on: Date.today + 35, location: "fridge"},
    { name: "mustard",  quantity: 2, unit: "ounce", expires_on: Date.today + 60, location: "fridge"},
    { name: "mayonaisse",  quantity: 13, unit: "ounce", expires_on: Date.today + 65, location: "fridge"},
    { name: "ketchup",  quantity: 16, unit: "ounce", expires_on: Date.today + 20, location: "fridge"},
    { name: "grenadine",  quantity: 16, unit: "ounce", expires_on: Date.today + 500, location: "fridge"},
    { name: "soy sauce",  quantity: 12, unit: "ounce", expires_on: Date.today + 13, location: "fridge"},
    { name: "chickpeas",  quantity: 2, unit: "can", expires_on: Date.today + 90, location: "pantry"},
    { name: "crackers",  quantity: 1, unit: "box", expires_on: Date.today + 60, location: "pantry"},
    { name: "chicken breast",  quantity: 4, unit: "can", expires_on: Date.today + 130, location: "pantry"},
    { name: "frozen butter",  quantity: 8, unit: "stick", expires_on: Date.today + 90, location: "freezer"},
    { name: "frozen scallops",  quantity: 3, unit: "pound", expires_on: Date.today + 60, location: "freezer"},
    { name: "frozen broccoli",  quantity: 4, unit: "bag", expires_on: Date.today + 60, location: "freezer"},
    { name: "carrot",  quantity: 2, unit: "pound", expires_on: Date.today + 3, location: "fridge"},
    { name: "parsley",  quantity: 0.5, unit: "bunch", expires_on: Date.today + 1, location: "fridge"},
    { name: "cilantro",  quantity: 0.5, unit: "bunch", expires_on: Date.today - 4, location: "fridge"},
])