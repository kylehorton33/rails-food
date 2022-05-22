class IngredientsController < ApplicationController
  before_action :set_ingredient, only: %i[ show edit update destroy use_all ]
  before_action :get_units, only: %i[ new edit ]
  before_action :get_categories, only: %i[ new edit category ]

  # GET /ingredients or /ingredients.json
  def index
    page_not_found
  end

  # GET /ingredients/1 or /ingredients/1.json
  def show
  end

  # GET /ingredients/new
  def new
    @ingredient = Ingredient.new
  end

  # GET /ingredients/1/edit
  def edit
  end

  # POST /ingredients or /ingredients.json
  def create
    @ingredient = Ingredient.new(ingredient_params)

    respond_to do |format|
      if @ingredient.save
        format.html { redirect_to root_url, notice: "Ingredient was successfully created." }
        format.json { render :show, status: :created, location: @ingredient }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingredients/1 or /ingredients/1.json
  def update
    respond_to do |format|
      if @ingredient.update(ingredient_params)
        format.html { redirect_to root_url, notice: "Ingredient was successfully updated." }
        format.json { render :show, status: :ok, location: @ingredient }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredients/1 or /ingredients/1.json
  def destroy
    @ingredient.destroy

    respond_to do |format|
      format.html { redirect_to root_url, notice: "Ingredient was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def use_all
    respond_to do |format|
      if @ingredient.update(quantity: 0)
        format.html { redirect_to root_url, notice: "Successfully used!" }
        format.json { render :show, status: :ok, location: @ingredient }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  def category
    @category = Category.find_by(name: params[:category_name])
    @ingredients = Ingredient.where(:category_id => @category.id).order(:expires_on)
    render "pages/home"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient
      @ingredient = Ingredient.find(params[:id])
    end

    def get_units
      @units = [
        ["", "NONE"],
        ["ounce", "ounce"],
        ["pound", "pound"],
        ["gallon", "gallon"],
        ["bottle", "bottle"],
        ["box", "box"],
        ["jar", "jar"],
        ["bunch", "bunch"],
        ["bag", "bag"],
        ["can", "can"]
      ]
    end

    def get_categories
      @categories = Category.all
    end

    # Only allow a list of trusted parameters through.
    def ingredient_params
      params.require(:ingredient).permit(:name, :quantity, :unit, :expires_on, :location, :category_id)
    end
end
