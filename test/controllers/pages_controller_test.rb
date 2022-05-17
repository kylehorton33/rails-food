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
end
