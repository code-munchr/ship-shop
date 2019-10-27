require 'test_helper'

class ShoppingExperiencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shopping_experience = shopping_experiences(:one)
  end

  test "should get index" do
    get shopping_experiences_url
    assert_response :success
  end

  test "should get new" do
    get new_shopping_experience_url
    assert_response :success
  end

  test "should create shopping_experience" do
    assert_difference('ShoppingExperience.count') do
      post shopping_experiences_url, params: { shopping_experience: {  } }
    end

    assert_redirected_to shopping_experience_url(ShoppingExperience.last)
  end

  test "should show shopping_experience" do
    get shopping_experience_url(@shopping_experience)
    assert_response :success
  end

  test "should get edit" do
    get edit_shopping_experience_url(@shopping_experience)
    assert_response :success
  end

  test "should update shopping_experience" do
    patch shopping_experience_url(@shopping_experience), params: { shopping_experience: {  } }
    assert_redirected_to shopping_experience_url(@shopping_experience)
  end

  test "should destroy shopping_experience" do
    assert_difference('ShoppingExperience.count', -1) do
      delete shopping_experience_url(@shopping_experience)
    end

    assert_redirected_to shopping_experiences_url
  end
end
