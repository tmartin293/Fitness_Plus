require 'test_helper'

class PersonalInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personal_info = personal_infos(:one)
  end

  test "should get index" do
    get personal_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_personal_info_url
    assert_response :success
  end

  test "should create personal_info" do
    assert_difference('PersonalInfo.count') do
      post personal_infos_url, params: { personal_info: { age: @personal_info.age, height_ft: @personal_info.height_ft, height_in: @personal_info.height_in, weight: @personal_info.weight } }
    end

    assert_redirected_to personal_info_url(PersonalInfo.last)
  end

  test "should show personal_info" do
    get personal_info_url(@personal_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_personal_info_url(@personal_info)
    assert_response :success
  end

  test "should update personal_info" do
    patch personal_info_url(@personal_info), params: { personal_info: { age: @personal_info.age, height_ft: @personal_info.height_ft, height_in: @personal_info.height_in, weight: @personal_info.weight } }
    assert_redirected_to personal_info_url(@personal_info)
  end

  test "should destroy personal_info" do
    assert_difference('PersonalInfo.count', -1) do
      delete personal_info_url(@personal_info)
    end

    assert_redirected_to personal_infos_url
  end
end
