require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get arms" do
    get pages_arms_url
    assert_response :success
  end

  test "should get chest" do
    get pages_chest_url
    assert_response :success
  end

  test "should get abs" do
    get pages_abs_url
    assert_response :success
  end

  test "should get shoulders" do
    get pages_shoulders_url
    assert_response :success
  end

  test "should get legs" do
    get pages_legs_url
    assert_response :success
  end

  test "should get back" do
    get pages_back_url
    assert_response :success
  end

end
