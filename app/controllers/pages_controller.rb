class PagesController < ApplicationController
  def home
    @ingredients = Ingredient.all.order(:expires_on)
  end
end
