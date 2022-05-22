require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_url
    assert_response :success
  end

  test "root should have search bar" do
    get root_url
    assert_select "input"
  end

  test "search should yield subset of results" do
    get root_url
    assert_select "tbody tr", 2
    get root_url(:search => ingredients(:one).name)
    assert_select "tbody tr", 1
  end

  test "root should have table" do
    get root_url
    assert_select "table"
  end

  test "root table should have correct headers" do
    get root_url
    assert_select "table" do
      assert_select "th", text: "Ingredient"
      assert_select "th", text: "Amount"
      assert_select "th", text: "Expires"
      assert_select "th", text: "Location"
    end
  end

  test "items with zero quantity should be removed from table" do
    get root_url
    assert_select "tr", 3
    patch use_all_ingredient_url(:id => ingredients(:one).id)
    assert_redirected_to root_url
    get root_url
    assert_select "tr", 2
  end
  
end
