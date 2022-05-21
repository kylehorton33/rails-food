require "test_helper"

class IngredientTest < ActiveSupport::TestCase
  def setup
    @ingredient = ingredients(:one)
  end

  test "ingredient should be valid" do
    assert @ingredient.valid?
  end

  test "ingredient with name violations should be invalid" do
    @ingredient.name = "INGREDIENT TWO"
    assert @ingredient.invalid?, "Name must be unique"
    @ingredient.name = ""
    assert @ingredient.invalid?, "Name must not be blank"
    @ingredient.name = "A"*41
    assert @ingredient.invalid?, "Name must not be less than 40 characters"
    @ingredient.name = "InGREdIeNT"
    assert_equal "INGREDIENT", @ingredient.name
    assert @ingredient.valid?, "Name should only contain uppercase"
  end
  
  test "ingredient with quantity violations should be invalid" do
    @ingredient.quantity = nil
    assert @ingredient.invalid?, "Quantity must not be nil"
  end
  
  test "ingredient with expires_on violations should be invalid" do
    @ingredient.expires_on = nil
    assert @ingredient.invalid?, "expires_on must not be nil"
  end
end
