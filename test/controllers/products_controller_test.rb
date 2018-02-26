require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get phone:text" do
    get products_phone:text_url
    assert_response :success
  end

  test "should get mtype:string" do
    get products_mtype:string_url
    assert_response :success
  end

  test "should get price:decimal" do
    get products_price:decimal_url
    assert_response :success
  end

  test "should get description:text" do
    get products_description:text_url
    assert_response :success
  end

end
