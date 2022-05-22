class PagesController < ApplicationController
  before_action :get_categories, only: %i[ home ]

  def home
    @ingredient_count = Ingredient.all.count
    if params[:search]
      @ingredients = Ingredient.where("name like ?", "%#{params[:search]}%").order(:name)
    else
      @ingredients = Ingredient.where("quantity > 0").order(:expires_on)
    end
  end

  private

  def get_categories
    @categories = @categories = Category.all
  end
end
