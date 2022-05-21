class PagesController < ApplicationController
  def home
    @ingredient_count = Ingredient.all.count
    @ingredients = Ingredient.where("quantity > 0").order(:expires_on)
  end
end
