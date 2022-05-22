class PagesController < ApplicationController
  def home
    @ingredient_count = Ingredient.all.count
    if params[:search]
      @ingredients = Ingredient.where("name like ?", "%#{params[:search]}%").order(:name)
    else
      @ingredients = Ingredient.where("quantity > 0").order(:expires_on)
    end
  end
end
