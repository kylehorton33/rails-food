require "test_helper"

class IngredientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredient = ingredients(:one)
  end

  test "should get index" do
    get ingredients_url
    assert_response :success
  end

  test "should get new" do
    get new_ingredient_url
    assert_response :success
  end

  test "new ingreident view should display correct components" do
    get new_ingredient_url
    assert_select "form", 1
    assert_select "input#ingredient_name[placeholder=Name]", 1
    assert_select "input#ingredient_quantity[placeholder=Quantity]", 1
    assert_select "input#ingredient_unit[placeholder=Unit]", 1
    assert_select "input#ingredient_expires_on", 1
    assert_select "input#ingredient_location[placeholder=Location]", 1
  end

  test "should create ingredient" do
    assert_difference("Ingredient.count") do
      @ingredient.name = "IngredientThree"
      post ingredients_url, params: { ingredient: { expires_on: @ingredient.expires_on, location: @ingredient.location, name: @ingredient.name, quantity: @ingredient.quantity, unit: @ingredient.unit } }
    end

    assert_redirected_to root_path
  end

  test "should show ingredient" do
    get ingredient_url(@ingredient)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingredient_url(@ingredient)
    assert_response :success
  end

  test "should update ingredient" do
    patch ingredient_url(@ingredient), params: { ingredient: { expires_on: @ingredient.expires_on, location: @ingredient.location, name: @ingredient.name, quantity: @ingredient.quantity, unit: @ingredient.unit } }
    assert_redirected_to ingredient_url(@ingredient)
  end

  test "should destroy ingredient" do
    assert_difference("Ingredient.count", -1) do
      delete ingredient_url(@ingredient)
    end

    assert_redirected_to ingredients_url
  end

end
