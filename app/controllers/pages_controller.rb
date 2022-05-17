class PagesController < ApplicationController
  def home
    @ingredients = [
      { name: "apple", quantity: 4, unit: nil, expires_on: Date.new(2022, 06, 1), location: "pantry" },
      { name: "milk", quantity: 0.5, unit: "gallon", expires_on: Date.new(2022, 5, 1), location: "fridge" },
      { name: "tofu", quantity: 4, unit: "package", expires_on: Date.new(2022, 10, 1), location: "fridge" },
      { name: "butter", quantity: 0.5, unit: "cup", expires_on: Date.new(2022, 5, 30), location: "freezer" },
      { name: "wine", quantity: 8, unit: "bottle", expires_on: Date.new(2022, 5, 25), location: "bar" },
      { name: "red pepper flakes", quantity: 25, unit: "tbsp", expires_on: Date.new(2022, 6, 1), location: "pantry" },
      { name: "mustard", quantity: 0.5, unit: "cup", expires_on: Date.new(2022, 06, 12), location: "fridge" },
      { name: "mustard", quantity: 0.5, unit: "cup", expires_on: Date.new(2022, 06, 10), location: "fridge" },
      { name: "mustard", quantity: 0.5, unit: "cup", expires_on: Date.new(2022, 5, 17), location: "fridge" },
      { name: "mustard", quantity: 0.5, unit: "cup", expires_on: Date.new(2022, 5, 16), location: "fridge" },
    ]
  end
end
